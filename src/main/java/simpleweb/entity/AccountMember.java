package simpleweb.entity;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;
import simpleweb.util.StringUtil;

import java.util.Calendar;

@Entity
public class AccountMember {
    @Id
    private String username;
    private String password;
    private String fullName;
    private String phoneNumber;
    private String address;
    private String email;
    private String salt;
    @Index
    private long createdAtMLS;
    @Index
    private long updatedAtMLS;
    @Index
    private int status;
    @Index
    private int role;

    public AccountMember() {
        this.createdAtMLS = Calendar.getInstance().getTimeInMillis();
        this.updatedAtMLS = Calendar.getInstance().getTimeInMillis();
    }

    public boolean isUser() {
        return this.role == Role.USER.getValue();
    }

    public boolean isStudent() {
        return this.role == Role.STUDENT.getValue();
    }

    public boolean isAdmin() {
        return this.role == Role.ADMIN.getValue();
    }

    public boolean isMember() {
        return (this.isUser() || this.isStudent() || this.isAdmin());
    }

    public enum Status {
        ACTIVE(1), DEACTIVE(0), DELETED(-1);

        private int value;

        Status(int value) {
            this.value = value;
        }

        public static Status findByValue(int value) {
            for (Status s : Status.values()) {
                if (s.value == value) {
                    return s;
                }
            }
            return Status.DEACTIVE;
        }

        @Override
        public String toString(){
            return this.name();
        }

        public String getName(){
            return this.name();
        }

        public int getValue() {
            return value;
        }

        public void setValue(int value) {
            this.value = value;
        }
    }

    public enum Role {
        USER(1), ADMIN(2), STUDENT(3);

        private int value;

        Role(int value) {
            this.value = value;
        }

        public static Role findByValue(int value) {
            for (Role r : Role.values()) {
                if (r.value == value) {
                    return r;
                }
            }
            return Role.USER;
        }



        @Override
        public String toString(){
            return this.name();
        }

        public String getName(){
            return this.name();


        }

        public int getValue() {
            return value;
        }

        public void setValue(int value) {
            this.value = value;
        }
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void hashPassword(String password) {
        if (this.salt == null || this.salt.length() == 0) {
            this.salt = StringUtil.generateSalt();
        }
        this.password = StringUtil.hashPassword(password, this.salt);
    }

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public long getCreatedAtMLS() {
        return createdAtMLS;
    }

    public void setCreatedAtMLS(long createdAtMLS) {
        this.createdAtMLS = createdAtMLS;
    }

    public long getUpdatedAtMLS() {
        return updatedAtMLS;
    }

    public void setUpdatedAtMLS(long updatedAtMLS) {
        this.updatedAtMLS = updatedAtMLS;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status.getValue();
    }

    public int getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = Integer.parseInt(role.getName());
    }
}
