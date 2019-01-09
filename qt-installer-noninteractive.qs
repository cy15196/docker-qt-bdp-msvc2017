// Emacs mode hint: -*- mode: JavaScript -*-

function Controller() {
    installer.autoRejectMessageBoxes();
    installer.installationFinished.connect(function() {
        gui.clickButton(buttons.NextButton);
    })
}

Controller.prototype.WelcomePageCallback = function() {
    // click delay here because the next button is initially disabled for ~1 second
    gui.clickButton(buttons.NextButton, 3000);
}

Controller.prototype.CredentialsPageCallback = function() {
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.IntroductionPageCallback = function() {
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.TargetDirectoryPageCallback = function()
{
	gui.currentPageWidget().TargetDirectoryLineEdit.setText(installer.environmentVariable("QT_INSTALL_DIR"));
    //gui.currentPageWidget().TargetDirectoryLineEdit.setText("C:/Qt/Qt5.12.0");
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.ComponentSelectionPageCallback = function() {
    var widget = gui.currentPageWidget();

    widget.deselectAll();
//	widget.selectComponent("qt");
    widget.selectComponent("qt.qt5.5120.win32_msvc2017");
    widget.selectComponent("qt.qt5.5120.win64_msvc2017_64");
	widget.selectComponent("qt.qt5.5120.qtcharts");
    widget.selectComponent("qt.qt5.5120.qtdatavis3d");
    widget.selectComponent("qt.qt5.5120.qtpurchasing");
    widget.selectComponent("qt.qt5.5120.qtvirtualkeyboard");
    widget.selectComponent("qt.qt5.5120.qtwebengine");
    widget.selectComponent("qt.qt5.5120.qtnetworkauth");
    widget.selectComponent("qt.qt5.5120.qtwebglplugin");
    widget.selectComponent("qt.qt5.5120.qtscript");

    gui.clickButton(buttons.NextButton);
}

Controller.prototype.LicenseAgreementPageCallback = function() {
    gui.currentPageWidget().AcceptLicenseRadioButton.setChecked(true);
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.StartMenuDirectoryPageCallback = function() {
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.ReadyForInstallationPageCallback = function()
{
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.FinishedPageCallback = function() {
	var checkBoxForm = gui.currentPageWidget().LaunchQtCreatorCheckBoxForm;
	if (checkBoxForm && checkBoxForm.launchQtCreatorCheckBox) {
		checkBoxForm.launchQtCreatorCheckBox.checked = false;
	}
    gui.clickButton(buttons.FinishButton);
}

