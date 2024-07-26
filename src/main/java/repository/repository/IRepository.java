package repository.repository;

import java.util.List;
import java.util.Optional;

public interface IRepository<T> {
	
	boolean insert(T t) throws Exception;
	
	boolean update(T t) throws Exception;
	
	boolean delete(String id) throws Exception;
	
	List<T> findAll() throws Exception;
	
	Optional<T> findByID(String id) throws Exception;

}