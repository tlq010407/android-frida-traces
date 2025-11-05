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

    /** 1) Open Saved Messages via drawer and send a text. */
    @Test
    public void savedMessages_FromDrawer_Send() throws Exception {
        launchApp(TARGET_PKG);
        dismissOnboardingAndPerms();

        // --- open left drawer (☰) ---
        UiObject2 drawer = device.wait(
                Until.findObject(By.descContains("Open navigation drawer").pkg(TARGET_PKG)), 3000);
        if (drawer != null) {
            safeClick(drawer);
        } else {
            // last resort: tap near top-left
            device.click(100, 200);
        }
        snap("drawer_opened");

        // --- tap "Saved Messages" inside the drawer ---
        UiObject2 saved = device.wait(Until.findObject(By.text("Saved Messages")), 3000);
        if (saved == null) saved = device.findObject(By.textContains("Saved"));
        if (saved != null) {
            // prefer clicking the clickable row container
            if (!clickClickableAncestor(saved)) safeClick(saved);
        } else {
            // generic fallback: first clickable row in drawer
            UiObject2 row = device.wait(Until.findObject(By.clickable(true)), 4000);
            if (row == null) {
                throw new AssertionError("Drawer item not found: Saved Messages");
            }
            if (!clickClickableAncestor(row)) safeClick(row);
        }
        snap("drawer_saved_messages_opened");

        // --- compose & send ---
        sendTextInComposer("UIAutomator says hi \uD83D\uDC4B");
        snap("drawer_saved_messages_sent");
        assertStillInApp();
    }

    /** 2) Scroll a chat list and open the N-th conversation (generic pattern). */
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

    /** 3) Open Settings via overflow menu (generic menu traversal example). */
    @Test
    public void openSettings_FromOverflow() throws Exception {
        launchApp(TARGET_PKG);
        dismissOnboardingAndPerms();

        // --- open the left drawer (☰) ---
        UiObject2 drawer = device.wait(
                Until.findObject(By.descContains("Open navigation drawer").pkg(TARGET_PKG)), 3000);
        if (drawer != null) {
            safeClick(drawer);
        } else {
            // last resort: tap near top-left
            device.click(100, 200);
        }
        snap("drawer_opened");

        // --- tap "Settings" inside the drawer ---
        UiObject2 settings = device.wait(Until.findObject(By.text("Settings")), 3000);
        if (settings == null) settings = device.findObject(By.textContains("Settings"));
        if (settings != null) {
            // prefer clicking the clickable row container
            if (!clickClickableAncestor(settings)) {
                safeClick(settings);
            }
        } else {
            // generic fallback: first clickable row in drawer
            UiObject2 row = device.wait(Until.findObject(By.clickable(true)), 4000);
            if (row != null) {
                if (!clickClickableAncestor(row)) safeClick(row);
            } else {
                throw new AssertionError("Drawer item not found: Settings");
            }
        }

        snap("settings_opened");
        assertStillInApp();
    }

    /** 4) Compose box robustness demo: focus bottom, input via shell, send by Enter. */
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

    /** Type into composer and force a real send by tapping next to the input. */
    private void sendTextInComposer(String message) throws Exception {
        // 1) type message (use shell as fallback if EditText not exposed)
        UiObject2 input = device.wait(
                Until.findObject(By.clazz("android.widget.EditText").pkg(TARGET_PKG)),
                6_000
        );
        if (input != null) {
            input.setText(message);
        } else {
            tapBottomInputFallback();
            device.executeShellCommand("input text '" + message
                    .replace(" ", "\\ ")
                    .replace("👋", "%F0%9F%91%8B") + "'");
            // try to re-query the input after focus
            input = device.findObject(By.clazz("android.widget.EditText").pkg(TARGET_PKG));
        }

        // 2) try semantic send controls first
        UiObject2 send = device.wait(Until.findObject(By.descContains("Send")), 800);
        if (send == null) send = device.findObject(By.text("Send"));
        if (send != null) { safeClick(send); Thread.sleep(250); return; }

        // 3) force tap near the right edge of the composer row (paper-plane area)
        if (input != null) {
            android.graphics.Rect r = input.getVisibleBounds();

            // try to locate the row that contains the EditText (clickable ancestor)
            UiObject2 row = input;
            for (int i = 0; i < 6 && row != null && !row.isClickable(); i++) row = row.getParent();
            if (row == null) row = input.getParent();

            android.graphics.Rect rowRect = (row != null) ? row.getVisibleBounds() : r;

            // X: a bit left from row right edge; Y: vertically centered on the row
            int x = (int) (rowRect.right - Math.max(48, rowRect.height() * 0.9));
            int y = rowRect.centerY();

            // keep inside screen
            int W = device.getDisplayWidth(), H = device.getDisplayHeight();
            x = Math.min(Math.max(10, x), W - 10);
            y = Math.min(Math.max(10, y), H - 10);

            device.click(x, y);
            Thread.sleep(300);
            return;
        }

        // 4) last ditch: bottom-right generic plane position
        int W = device.getDisplayWidth(), H = device.getDisplayHeight();
        device.click((int)(W * 0.92), (int)(H * 0.90));
        Thread.sleep(300);
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