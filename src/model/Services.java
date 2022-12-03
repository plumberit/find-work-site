package model;

import java.io.*;
import java.util.ArrayList;
import java.util.Scanner;

public class Services {

    private ArrayList<Advertisement> ads = new ArrayList<>();
    private String path = "E:\\ДАНИЛ\\prog\\java projects\\COURSE\\course1\\src\\database\\database.txt";

    public ArrayList<Advertisement> getAdverts() throws IOException {
        int strokes = getStrokes();
        FileReader rd = new FileReader(path);
        Scanner scan = new Scanner(rd);
        int serialNumber = 1;
        while (scan.hasNextLine()) {
            for (int j = 0; j < strokes / 3; j++) {
                ads.add(j, new Advertisement());
                ads.get(j).setVacancy(scan.nextLine().toUpperCase());
                ads.get(j).setDescription(scan.nextLine());
                ads.get(j).setRequirements(scan.nextLine());
                ads.get(j).setSerialNumber("#" + serialNumber);
                serialNumber++;
            }
        }
        rd.close();
        return ads;
    }

    private int getStrokes() throws IOException {
        int strokes = 0;
        FileReader rd = new FileReader(path);
        Scanner scan = new Scanner(rd);
        while (scan.hasNextLine()) {
            scan.nextLine();
            strokes++;
        }
        rd.close();
        return strokes;
    }

    public void setAdverts(String name, String description, String requirement) throws IOException {
        if (name.equals(""))
            name = ". . .";
        if (description.equals(""))
            description = ". . .";
        if (requirement.equals(""))
            requirement = ". . .";
        ads = getAdverts();
        FileWriter wr = new FileWriter(path, true);
        if (!ads.isEmpty()) {
            wr.write("\n" + name + "\n" + description + "\n" + requirement);
        } else {
            wr.write(name + "\n" + description + "\n" + requirement);
        }
        wr.close();
    }

    public void deleteAdvertisement(String serialNumber) throws IOException {
        ads = getAdverts();
        for (int i = 0; i < ads.size(); i++) {
            if (serialNumber.equals(ads.get(i).getSerialNumber())) {
                ads.remove(i);
                break;
            }
        }
        rewrite();
    }

    private void rewrite() throws IOException {
        FileWriter wr = new FileWriter(path);
        if (!ads.isEmpty()) {
            for (int i = 0; i < ads.size() - 1; i++) {
                wr.write(ads.get(i).getVacancy() + "\n" + ads.get(i).getDescription() + "\n" +
                        ads.get(i).getRequirements() + "\n");
            }
            int lastIndex = ads.size() - 1;
            wr.write(ads.get(lastIndex).getVacancy() + "\n" + ads.get(lastIndex).getDescription() + "\n" +
                    ads.get(lastIndex).getRequirements());
        }
        wr.close();
    }

    public void editAdvertisement(String serialNumber, String vacancy, String description, String requirements)
            throws IOException {
        ads = getAdverts();

        for (int i = 0; i < ads.size(); i++) {
            if (serialNumber.equals(ads.get(i).getSerialNumber())) {
                if (!vacancy.equals("")) {
                    ads.get(i).setVacancy(vacancy);
                }
                if (!description.equals("")) {
                    ads.get(i).setDescription(description);
                }
                if (!requirements.equals("")) {
                    ads.get(i).setRequirements(requirements);
                }
            }
        }
        rewrite();
    }

    public ArrayList<Advertisement> searchAdvert(String vacancy) throws IOException {
        vacancy = vacancy.toUpperCase();
        ArrayList<Advertisement> searchList = new ArrayList<>();
        ads = getAdverts();
        for (int i = 0; i < ads.size(); i++) {
            if (vacancy.equals(ads.get(i).getVacancy())) {
                searchList.add(ads.get(i));
            }
        }
        return searchList;
    }

}
