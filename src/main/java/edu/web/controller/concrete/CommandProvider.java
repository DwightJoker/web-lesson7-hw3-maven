package edu.web.controller.concrete;

import java.util.HashMap;
import java.util.Map;

import edu.web.controller.concrete.Command;
import edu.web.controller.concrete.CommandName;
import edu.web.controller.concrete.NoSuchCommand;
import edu.web.controller.concrete.impl.DoAuth;
import edu.web.controller.concrete.impl.DoRegistration;
import edu.web.controller.concrete.impl.GoToAuthPage;
import edu.web.controller.concrete.impl.GoToMainPage;
import edu.web.controller.concrete.impl.GoToStartPage;
import edu.web.controller.concrete.impl.GoToRegistrationPage;

public class CommandProvider {
	private Map<CommandName, Command> commands = new HashMap<>();
	
	public CommandProvider() {
		commands.put(CommandName.DO_AUTH, new DoAuth());
		commands.put(CommandName.DO_REGISTRATION, new DoRegistration());
		
		commands.put(CommandName.GO_TO_REGISTRATION_PAGE, new GoToRegistrationPage());
		commands.put(CommandName.GO_TO_AUTH_PAGE, new GoToAuthPage());
		commands.put(CommandName.GO_TO_START_PAGE, new GoToStartPage());
		commands.put(CommandName.GO_TO_MAIN_PAGE, new GoToMainPage());
		
		commands.put(CommandName.NO_SUCH_COMMAND, new NoSuchCommand());
	}
	
	public Command takeCommand(String userCommand) {
		CommandName commandName;
		Command command;
		
		try {
			commandName = CommandName.valueOf(userCommand.toUpperCase());
			command = commands.get(commandName);
		}catch(IllegalArgumentException | NullPointerException e) {
			command = commands.get(CommandName.NO_SUCH_COMMAND);
		}
		
		return command;
	}

}
