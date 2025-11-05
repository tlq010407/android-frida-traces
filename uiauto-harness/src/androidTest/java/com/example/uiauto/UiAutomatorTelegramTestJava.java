package com.example.uiauto;

import static org.junit.Assert.assertTrue;

import android.app.Instrumentation;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;

import androidx.test.ext.junit.runners.AndroidJUnit4;
import androidx.test.platform.app.InstrumentationRegistry;
import androidx.test.uiautomator.By;
import androidx.test.uiautomator.BySelector;
import androidx.test.uiautomator.Direction;
import androidx.test.uiautomator.UiDevice;
import androidx.test.uiautomator.UiObject2;
import androidx.test.uiautomator.Until;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;

import java.io.File;

@RunWith(AndroidJUnit4.class)
public class UiAutomatorTelegramTestJava {

    private static final String TARGET_PKG = "org.telegram.messenger";
    private static final long TIMEOUT = 25_000L;
    private static final String SHOT_DIR = "/sdcard/Download";

    private UiDevice device;

    // ---------------------- Setup ----------------------

    @Before
    public void setup() throws Exception {
        device = UiDevice.getInstance(InstrumentationRegistry.getInstrumentation());
        device.pressHome();
        device.executeShellCommand("am force-stop " + TARGET_PKG);
        String launcher = getLauncherPackage();
        device.wait(Until.hasObject(By.pkg(launcher).depth(0)), TIMEOUT);
        // ensure app installed
        boolean installed = device.executeShellCommand("pm list packages " + TARGET_PKG).contains(TARGET_PKG);
        assertTrue("Telegram not installed. Install first.", installed);
    }

    // ---------------------- Tests ----------------------

    /** 0) Smoke: launch & assert visible (quick health check). */
    @Test
    public void smoke_LaunchVisible() throws Exception {
        launchApp(TARGET_PKG);
        assertTrue("App not visible",
                device.wait(Until.hasObject(By.pkg(TARGET_PKG).depth(0)), TIMEOUT));
        snap("smoke_visible");
    }

    /** 1) Open Saved Messages via deep link and send a text (skips flaky search). */
    @Test
    public void savedMessages_DeepLink_Send() throws Exception {
        launchApp(TARGET_PKG);
        dismissOnboardingAndPerms();
        openSavedMessagesDeepLink();
        // try to focus composer & send
        sendTextInComposer("UIAutomator says hi \uD83D\uDC4B");
        snap("deep_link_sent");
        assertStillInApp();
    }

    /** 2) Search for “Saved Messages”, open result by clickable ancestor, then send. */
    @Test
    public void savedMessages_Search_Open_Send() throws Exception {
        launchApp(TARGET_PKG);
        dismissOnboardingAndPerms();

        openSearch();
        typeSearchAndSubmit("Saved Messages");
        openSearchResultByText("Saved Messages");
        sendTextInComposer("UIAutomator says hi \uD83D\uDC4B");

        snap("search_sent");
        assertStillInApp();
    }

    /** 3) Scroll a chat list and open the N-th conversation (generic pattern). */
    @Test
    public void chatList_ScrollAndOpenNth() throws Exception {
        launchApp(TARGET_PKG);
        dismissOnboardingAndPerms();

        // Try to find a recycler/list and scroll a bit, then tap a row
        UiObject2 list = device.wait(Until.findObject(
                By.clazz("androidx.recyclerview.widget.RecyclerView").pkg(TARGET_PKG)), 5000);

        if (list != null) {
            // scroll down twice
            list.scroll(Direction.DOWN, 1.0f);
            list.scroll(Direction.DOWN, 1.0f);

            // tap first clickable row on screen
            UiObject2 row = device.wait(Until.findObject(By.clickable(true).pkg(TARGET_PKG)), 4000);
            if (row != null) safeClick(row);
        }
        snap("list_opened");
        assertStillInApp();
    }

    /** 4) Open Settings via overflow menu (generic menu traversal example). */
    @Test
    public void openSettings_FromOverflow() throws Exception {
        launchApp(TARGET_PKG);
        dismissOnboardingAndPerms();

        // open overflow (three-dots); try common variants
        UiObject2 more = device.wait(Until.findObject(By.descContains("More").pkg(TARGET_PKG)), 3000);
        if (more == null) more = device.findObject(By.descContains("More options"));
        if (more == null) more = device.findObject(By.desc("More"));
        if (more == null) more = device.findObject(By.clazz("android.widget.ImageView").descContains("More"));
        if (more != null) safeClick(more);

        // click "Settings" item (fallback to text contains)
        UiObject2 settings = device.wait(Until.findObject(By.text("Settings").pkg(TARGET_PKG)), 3000);
        if (settings == null) settings = device.findObject(By.textContains("Settings"));
        if (settings != null) safeClick(settings);

        snap("settings_opened");
        assertStillInApp();
    }

    /** 5) Compose box robustness demo: focus bottom, input via shell, send by Enter. */
    @Test
    public void composer_BottomTap_ShellInput() throws Exception {
        launchApp(TARGET_PKG);
        dismissOnboardingAndPerms();
        openSavedMessagesDeepLink();

        // focus bottom area (in case EditText isn't exposed)
        tapBottomInputFallback();
        device.executeShellCommand("input text 'Shell\\ input\\ works\\ too\\ %F0%9F%92%AA'");
        device.executeShellCommand("input keyevent 66"); // Enter to send

        snap("shell_input_sent");
        assertStillInApp();
    }

    // ---------------------- Helpers (actions) ----------------------

    private void launchApp(String pkg) throws Exception {
        Instrumentation inst = InstrumentationRegistry.getInstrumentation();
        Context ctx = inst.getContext();
        Intent intent = ctx.getPackageManager().getLaunchIntentForPackage(pkg);
        if (intent != null) {
            intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TASK);
            ctx.startActivity(intent);
        } else {
            device.executeShellCommand("monkey -p " + pkg + " -c android.intent.category.LAUNCHER 1");
        }
        Thread.sleep(1000);
    }

    private void dismissOnboardingAndPerms() {
        // Onboarding / welcome buttons
        clickAny(new BySelector[]{
                By.textStartsWith("Start"),
                By.textContains("Continue"),
                By.textContains("Next"),
                By.textContains("下一步"),
                By.descContains("Start"),
                By.clazz("android.widget.Button").clickable(true)
        });
        // Runtime permissions
        tapAllowIfPermissionDialog();
    }

    /** Open Saved Messages via deep link (most reliable). */
    private void openSavedMessagesDeepLink() throws Exception {
        device.executeShellCommand(
                "am start -a android.intent.action.VIEW -d 'tg://resolve?domain=me' " + TARGET_PKG
        );
        Thread.sleep(1200);
    }

    private void openSearch() {
        UiObject2 searchBtn = device.wait(
                Until.findObject(By.descContains("Search").pkg(TARGET_PKG).clickable(true)), 4000
        );
        if (searchBtn == null) {
            searchBtn = device.findObject(By.clazz("android.widget.ImageView").descContains("Search"));
        }
        if (searchBtn != null) safeClick(searchBtn);
        snap("search_panel");
    }

    private void typeSearchAndSubmit(String query) throws Exception {
        UiObject2 searchInput = device.wait(
                Until.findObject(By.clazz("android.widget.EditText").pkg(TARGET_PKG).focusable(true)), 5000
        );
        if (searchInput != null) {
            searchInput.setText(query);
            try { device.pressEnter(); } catch (Exception ignored) {}
        } else {
            device.executeShellCommand("input text '" + query.replace(" ", "\\ ") + "'");
            try { device.pressEnter(); } catch (Exception ignored) {}
        }
        Thread.sleep(600);
    }

    private void openSearchResultByText(String text) {
        UiObject2 match = device.wait(Until.findObject(By.text(text).pkg(TARGET_PKG)), 6_000);
        if (match == null) match = device.wait(Until.findObject(By.textContains(text).pkg(TARGET_PKG)), 6_000);
        if (match != null) {
            if (!clickClickableAncestor(match)) {
                safeClick(match);
            }
            snap("search_result_opened");
            return;
        }
        // fallback: first clickable row
        UiObject2 anyRow = device.wait(Until.findObject(By.clickable(true).pkg(TARGET_PKG)), 3_000);
        if (anyRow != null) {
            if (!clickClickableAncestor(anyRow)) safeClick(anyRow);
            snap("search_result_fallback_opened");
        } else {
            throw new AssertionError("No search result rows found for: " + text);
        }
    }

    /** Robust composer typing (prefers EditText; falls back to bottom tap + shell input). */
    private void sendTextInComposer(String message) throws Exception {
        UiObject2 msgBox = device.wait(
                Until.findObject(By.clazz("android.widget.EditText").pkg(TARGET_PKG).clickable(true)),
                8_000
        );
        if (msgBox != null) {
            msgBox.setText(message);
        } else {
            tapBottomInputFallback();
            device.executeShellCommand("input text '" + message
                    .replace(" ", "\\ ")
                    .replace("👋", "%F0%9F%91%8B") + "'");
        }
        UiObject2 sendBtn = device.findObject(By.descContains("Send"));
        if (sendBtn == null) sendBtn = device.findObject(By.clazz("android.widget.ImageButton").clickable(true));
        if (sendBtn != null) {
            safeClick(sendBtn);
        } else {
            device.executeShellCommand("input keyevent 66"); // Enter
        }
    }

    // ---------------------- Helpers (utilities) ----------------------

    private String getLauncherPackage() {
        Context ctx = InstrumentationRegistry.getInstrumentation().getContext();
        Intent intent = new Intent(Intent.ACTION_MAIN);
        intent.addCategory(Intent.CATEGORY_HOME);
        ResolveInfo res = ctx.getPackageManager().resolveActivity(intent, 0);
        return res.activityInfo.packageName;
    }

    /** Click through common permission dialogs. Add OEM-specific IDs if needed. */
    private void tapAllowIfPermissionDialog() {
        String[] ids = new String[]{
                "com.android.permissioncontroller:id/permission_allow_button",
                "com.android.permissioncontroller:id/permission_allow_one_time_button",
                "com.android.permissioncontroller:id/permission_allow_foreground_only_button",
                "com.android.permissioncontroller:id/continue_button"
        };
        String[] texts = new String[]{
                "Allow","While using the app","Allow only this time","Continue",
                "允许","始终允许","仅在使用该应用时允许","继续"
        };
        for (String id : ids) {
            UiObject2 o = device.findObject(By.res(id));
            if (o != null) { safeClick(o); return; }
        }
        for (String t : texts) {
            UiObject2 o = device.findObject(By.textContains(t));
            if (o != null) { safeClick(o); return; }
        }
    }

    /** Click first match among selectors, then return. */
    private void clickAny(BySelector[] selectors) {
        for (BySelector sel : selectors) {
            UiObject2 o = device.findObject(sel);
            if (o != null) { safeClick(o); return; }
        }
    }

    /** Click nearest clickable ancestor (rows often wrap non-clickable labels). */
    private boolean clickClickableAncestor(UiObject2 node) {
        UiObject2 cur = node; int hops = 0;
        while (cur != null && !cur.isClickable() && hops < 8) { cur = cur.getParent(); hops++; }
        if (cur != null && cur.isClickable()) { safeClick(cur); return true; }
        return false;
    }

    /** Focus the composer area by tapping near the bottom of the screen. */
    private void tapBottomInputFallback() {
        try {
            int w = device.getDisplayWidth(), h = device.getDisplayHeight();
            device.click(w / 2, (int) (h * 0.90));
            Thread.sleep(300);
        } catch (Exception ignored) {}
    }

    /** Best-effort click with exception safety. */
    private void safeClick(UiObject2 o) {
        try { o.click(); } catch (Throwable ignored) {}
    }

    /** Save a screenshot for debugging. */
    private void snap(String name) {
        try {
            File f = new File(SHOT_DIR + "/uiauto_" + name + ".png");
            device.takeScreenshot(f);
        } catch (Throwable ignored) {}
    }

    private void assertStillInApp() {
        assertTrue("Telegram not in foreground",
                device.wait(Until.hasObject(By.pkg(TARGET_PKG).depth(0)), 3_000));
    }
}