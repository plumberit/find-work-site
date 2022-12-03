package model;

public class Advertisement {
    private String vacancy;
    private String description;
    private String requirements;
    private String serialNumber;

    public Advertisement() {
    }

    public Advertisement(String vacancy, String description, String requirements, String serialNumber) {
        this.vacancy = vacancy;
        this.description = description;
        this.requirements = requirements;
        this.serialNumber = serialNumber;
    }

    public String getVacancy() {
        return vacancy;
    }

    public void setVacancy(String vacancy) {
        this.vacancy = vacancy;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getRequirements() {
        return requirements;
    }

    public void setRequirements(String requirements) {
        this.requirements = requirements;
    }

    public String getSerialNumber() {
        return serialNumber;
    }

    public void setSerialNumber(String serialNumber) {
        this.serialNumber = serialNumber;
    }
}
