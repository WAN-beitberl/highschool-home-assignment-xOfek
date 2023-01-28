import javax.xml.transform.Result;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;
import java.io.File;

public class Main {

    public static void main(String[] args) {
        AutomaticReport();
    }

    public static void InsertToDatabases()
    {
        String first_name = null, last_name = null, email = null, gender = null, ip_address = null,
                height_cm = null, age = null, car_color = null, grade = null, grade_avg = null, id_card = null,
                query, carQuery;
        int id = 0;

        String friend_id = null, other_friend_id = null, friendQuery;

        try {
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/schema-for-sima", "root", "sHmoolik$99!");
            Statement statement = connection.createStatement();

//            Scanner sc = new Scanner(new File("C:\\Users\\ofekz\\OneDrive\\Desktop\\highschool.csv"));
            Scanner sc = new Scanner(new File("C:\\Users\\ofekz\\OneDrive\\Desktop\\highschool_friendships.csv"));
            sc.useDelimiter(",");

            int ctr, temp;

            for (ctr = 0; ctr < 3; ctr++)
                System.out.println(sc.next());

            ctr = 1;

            while (sc.hasNext())
            {
                switch(ctr++)
                {
                    case 1:
                        id++;
                        break;
                    case 2:
                        friend_id = sc.next();
                        break;
                    case 3:
                        other_friend_id = sc.next();
                        temp = other_friend_id.indexOf('\n');
                        other_friend_id = other_friend_id.substring(0, temp);

                        if (friend_id.length() > 0 && other_friend_id.length() > 0)
                        {
                            friendQuery = "INSERT INTO friends (id, friend_id, other_friend_id) VALUES (" +
                                    id + "," + friend_id + "," + other_friend_id + ");";
                            System.out.println(friendQuery);
                            statement.executeUpdate(friendQuery);
                        }
                        else {
                            id--;
                        }
                        ctr = 1;
                        break;

                    default:
                        System.out.println("How'd you get over here?");
                }
            }

            id = 0;

            // skip over column names
            for (ctr = 0; ctr < 13; ctr++)
            {
                sc.next();
            }

            ctr = 1;

            while (sc.hasNext()) {

                switch(ctr++)
                {
                    case 1:
                        id++;
                        break;
                    case 2:
                        first_name = "\"" + sc.next() + "\"";
                        break;
                    case 3:
                        last_name = "\"" + sc.next() + "\"";
                        break;
                    case 4:
                        email = "\"" + sc.next() + "\"";
                        break;
                    case 5:
                        gender = "\"" + sc.next() + "\"";
                        break;
                    case 6:
                        ip_address = "\"" + sc.next() + "\"";
                        break;
                    case 7:
                        height_cm = sc.next();
                        break;
                    case 8:
                        age = sc.next();
                        break;
                    case 9:
                        sc.next();
                        break;
                    case 10:
                        car_color = "\"" + sc.next() + "\"";
                        break;
                    case 11:
                        grade = sc.next();
                        break;
                    case 12:
                        grade_avg = sc.next();
                        break;
                    case 13:
                        id_card = sc.next();
                        temp = id_card.indexOf('\n');
                        id_card = id_card.substring(0, temp);

                        query = "INSERT INTO students (id, first_name, last_name," +
                                " email, gender, ip_address, height_cm, age, grade, grade_avg, id_card)" +
                                " VALUES (" + id + "," + first_name + "," + last_name + "," + email + "," + gender + "," +
                                "INET_ATON(" + ip_address + ")," + height_cm + "," + age + "," + grade + "," + grade_avg +
                                "," + id_card + ");";
                        System.out.println(query);

                        statement.executeUpdate(query);

                        if (car_color.charAt(1) != '\'')
                        {
                            carQuery = "INSERT INTO car_colors (id, color) VALUES (" + id + "," + car_color + ")";
                            System.out.println(carQuery);
                            statement.executeUpdate(carQuery);
                        }

                        ctr = 1;

                        break;
                    default:
                        System.out.println("How'd you get here??");
                }

            }

            sc.close();


        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void AutomaticReport() {
        try {
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/schema-for-sima", "root", "sHmoolik$99!");
            Statement statement = connection.createStatement();
            Statement secondStatement = connection.createStatement();
            ResultSet resultSet;
            ResultSet secondResultSet;

            int input = 0;
            int id;

            Scanner sc = new Scanner(System.in);

            System.out.println("Welcome to this magical creation that does your work for you!");

            do {
                System.out.println("Press 1 for the school's grade average");
                System.out.println("Press 2 for the male student's grade average");
                System.out.println("Press 3 for the female student's grade average");
                System.out.println("Press 4 for the average height of students who are taller than 2m and have a purple car");
                System.out.println("Press 5 to choose a student and find his friends and his friend's friends");
                System.out.println("Press 6 for the stats on student's popularity.");
                System.out.println("Press 7 to choose a student and see his grade average");
                System.out.println("Press 8 to exit this system");

                input = sc.nextInt();

                switch (input) {
                    case 1:
                        resultSet = statement.executeQuery("SELECT SUM(grade_avg) / COUNT(*) FROM students;");

                        if (resultSet.next()) {
                            System.out.println("The average is: " + resultSet.getFloat(1));
                        }
                        break;
                    case 2:
                        resultSet = statement.executeQuery("SELECT SUM(grade_avg) / COUNT(*) FROM students " +
                                "WHERE Gender = 'Male';");
                        if (resultSet.next()) {
                            System.out.println("The average is: " + resultSet.getFloat(1));
                        }
                        break;
                    case 3:
                        resultSet = statement.executeQuery("SELECT SUM(grade_avg) / COUNT(*) FROM students " +
                                "WHERE Gender = 'Female';");
                        if (resultSet.next()) {
                            System.out.println("The average is: " + resultSet.getFloat(1));
                        }
                        break;
                    case 4:
                        resultSet = statement.executeQuery(
                                "SELECT SUM(height_cm) / COUNT(*) FROM students INNER JOIN car_colors" +
                                        " ON students.id = car_colors.id" +
                                        " WHERE height_cm >= 200 AND color = 'Purple'");
                        if (resultSet.next())
                        {
                            System.out.println("The average is: " + resultSet.getFloat(1));
                        }
                        break;
                    case 5:
                        id = sc.nextInt();
                        int original_id = id;
                        resultSet = statement.executeQuery("SELECT CASE WHEN " + id + " = friend_id THEN other_friend_id" +
                                " WHEN " + id + " = other_friend_id THEN friend_id END FROM friends" +
                                " WHERE friend_id = " + id + " OR other_friend_id = " + id);
                        while (resultSet.next())
                        {
                            System.out.println(id = resultSet.getInt(1));
                            secondResultSet = secondStatement.executeQuery("SELECT CASE WHEN " + id + " = friend_id THEN other_friend_id" +
                                    " WHEN " + id + " = other_friend_id THEN friend_id END FROM friends" +
                                    " WHERE friend_id = " + id + " OR other_friend_id = " + id);
                            while (secondResultSet.next())
                            {
                                if (secondResultSet.getInt(1) != original_id)
                                {
                                    System.out.println(secondResultSet.getInt(1));
                                }
                            }
                        }
                        break;
                    case 6:
                        int total = 0;
                        resultSet = statement.executeQuery("SELECT COUNT(*) FROM students");
                        if (resultSet.next()) {
                           total = resultSet.getInt(1);
                        }

                        int[] friends = new int[total + 1];
                        for (int i = 0; i < total; i++) friends[i] = 0;

                        resultSet = statement.executeQuery("SELECT friend_id, other_friend_id FROM friends");

                        while (resultSet.next())
                        {
                            friends[resultSet.getInt(1)]++;
                            friends[resultSet.getInt(2)]++;
                        }

                        int noFriends = 0, oneFriend = 0, lotsaFriends = 0;

                        for (int i = 0; i < total; i++)
                        {
                            if (friends[i] == 0)
                            {
                                noFriends++;
                            }
                            else if (friends[i] == 1)
                            {
                                oneFriend++;
                            }
                            else
                            {
                                lotsaFriends++;
                            }
                        }

                        System.out.println("Percent of students with no friends: " + ((float)noFriends / total) * 100 + "%");
                        System.out.println("Percent of students with one friend: " + ((float)oneFriend / total) * 100 + "%");
                        System.out.println("Percent of students with lots of friends: " + ((float)lotsaFriends / total) * 100 + "%");

                        break;
                    case 7:
                        id = sc.nextInt();
                        resultSet = statement.executeQuery("SELECT * FROM studentgrades WHERE id_card = " + id + ";");
                        if (resultSet.next())
                        {
                            System.out.print(resultSet.getInt(1) + " ");
                            System.out.println(resultSet.getFloat(2));
                        }
                        break;
                    case 8:
                        System.out.println("Hope you had a good time, Sima! :)");
                        break;
                    default:
                        break;
                }

            } while (input != 8);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}