package app.DAO;

import app.model.User;

public interface UserDAO extends BaseDAO<Integer, User> {
    User findUserByEmail(String username);
}
