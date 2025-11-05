package com.example.uiauto;

import android.content.Context;
import android.content.Intent;
import androidx.test.core.app.ApplicationProvider;
import androidx.test.ext.junit.runners.AndroidJUnit4;
import androidx.test.platform.app.InstrumentationRegistry;
import androidx.test.uiautomator.By;
import androidx.test.uiautomator.UiDevice;
import androidx.test.uiautomator.UiObject2;
import androidx.test.uiautomator.Until;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;

import java.io.File;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

/**
 * UI Automator test for sending a message in Telegram.
 */
@RunWith(AndroidJUnit4.class)
public class UiAutomatorTelegramTest {

    private static final String TARGET_PKG = "org.telegram.messenger";
    private static final int TIMEOUT = 10000; // Increased timeout for slower devices/emulators
    private UiDevice device;

    @Before
    public void setUp() {
        // Initialize UiDevice instance
        device = UiDevice.getInstance(InstrumentationRegistry.getInstrumentation());

        // Start from the home screen
        device.pressHome();

        // Wait for launcher
        final String launcherPackage = device.getLauncherPackageName();
        assertNotNull(launcherPackage);
        device.wait(Until.hasObject(By.pkg(launcherPackage).depth(0)), TIMEOUT);
    }

    @Test
    public void testSendMessageToSavedMessages() {
        // Launch the app
        Context context = ApplicationProvider.getApplicationContext();
        final Intent intent = context.getPackageManager().getLaunchIntentForPackage(TARGET_PKG);
        // Clear out any previous instances
        intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TASK);
        context.startActivity(intent);

        // Wait for the app to appear
        device.wait(Until.hasObject(By.pkg(TARGET_PKG).depth(0)), TIMEOUT);

        // 1. Click on search button
        UiObject2 searchButton = device.findObject(By.desc("Search"));
        // A common resource ID for a search icon is "search_button" or similar.
        // Let's add a fallback. The content description is more reliable if set.
        if (searchButton == null) {
            searchButton = device.findObject(By.res(TARGET_PKG, "search_bar_search_view"));
        }
        assertNotNull("Search button not found", searchButton);
        searchButton.click();

        // 2. Type "Saved Messages" in the search input.
        UiObject2 searchInput = device.wait(Until.findObject(By.text("Search")), TIMEOUT);
        assertNotNull("Search input not found", searchInput);
        searchInput.setText("Saved Messages");

        // 3. Click on the "Saved Messages" chat result.
        UiObject2 savedMessagesResult = device.wait(Until.findObject(By.text("Saved Messages")), TIMEOUT);
        assertNotNull("'Saved Messages' chat not found", savedMessagesResult);
        savedMessagesResult.click();

        // 4. Type a message in the message box.
        // The resource ID for the input field is often named 'chat_input_view' or contains 'edit_text'.
        UiObject2 messageBox = device.wait(Until.findObject(By.res(TARGET_PKG, "chat_input_view")), TIMEOUT);
        if (messageBox == null) {
            messageBox = device.findObject(By.clazz("android.widget.EditText"));
        }
        assertNotNull("Message input box not found", messageBox);
        messageBox.setText("Hello from UI Automator!");

        // 5. Click the send button.
        UiObject2 sendButton = device.findObject(By.desc("Send"));
        assertNotNull("Send button not found", sendButton);
        sendButton.click();

        // Wait a bit for message to appear as sent
        device.wait(Until.hasObject(By.text("Hello from UI Automator!")), TIMEOUT);

        // Take a screenshot for verification (optional)
        // Ensure you have storage permissions for this to work on a real device.
        // On emulator, it should work fine.
        File screenshot = new File("/sdcard/Download/telegram_test_screenshot.png");
        device.takeScreenshot(screenshot);

        // Simple assertion to make sure we are still in the app.
        assertTrue("Not in Telegram app anymore", device.hasObject(By.pkg(TARGET_PKG)));
    }
}