package org.salespointframework.core.users;

import java.io.Serializable;
import javax.persistence.*;
import org.salespointframework.util.SalespointIdentifier;

/**
 * Entity implementation class for Entity: UserIdentifier
 *
 * @author hannesweisbach
 */
@Entity

public class UserIdentifier extends SalespointIdentifier implements Serializable {

	
	private static final long serialVersionUID = 1L;

	public UserIdentifier() {
		super();
	}
   
}
