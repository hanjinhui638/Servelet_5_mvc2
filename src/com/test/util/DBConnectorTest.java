package com.test.util;

import static org.junit.Assert.*;

import java.sql.Connection;

import org.junit.Test;

import com.jh.util.DBConnector;

public class DBConnectorTest {

	@Test
	public void test() throws Exception{
		Connection con = DBConnector.getConnection();
		assertNotNull(con);
	}

}
