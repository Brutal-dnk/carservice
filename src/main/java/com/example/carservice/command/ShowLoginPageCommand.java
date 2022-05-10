package com.example.carservice.command;

import com.example.carservice.controller.RequestFactory;
import com.example.carservice.exception.ServiceError;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ShowLoginPageCommand implements Command{
    private static final Logger LOG = LoggerFactory.getLogger(ShowMainPageCommand.class);
    private final RequestFactory requestFactory;

    public ShowLoginPageCommand(RequestFactory requestFactory) {
        this.requestFactory = requestFactory;
    }

    @Override
    public CommandResponse execute(CommandRequest request) throws ServiceError {
        return requestFactory.createForwardResponse(PagePath.LOGIN_PAGE.getPath());
    }
}
