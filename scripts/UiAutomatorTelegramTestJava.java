package com.example.uiauto;

import static org.junit.Assert.assertTrue;

import android.content.Intent;

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

    private static final String TARGET_PKG = "org.telegram.messenger"; // ← 改成你的目标包
    private static final long TIMEOUT = 12_000L;
    private static final String SHOT_DIR = "/sdcard/Download";

    private UiDevice device;

    @Before
    public void setup() throws Exception {
        device = UiDevice.getInstance(InstrumentationRegistry.getInstrumentation());
        device.pressHome();

        // 可选：确保干净初始态
        device.executeShellCommand("am force-stop " + TARGET_PKG);

        // 等待桌面就绪
        String launcher = getLauncherPackage();
        device.wait(Until.hasObject(By.pkg(launcher).depth(0)), TIMEOUT);
    }

    @Test
    public void firstRun_Permissions_Search_Send() throws Exception {
        // 启动 App（清栈）
        launchApp(TARGET_PKG);

        // 等待根节点
        assertTrue("App not visible",
                device.wait(Until.hasObject(By.pkg(TARGET_PKG).depth(0)), TIMEOUT));
        snap("01_home_or_onboarding");

        // 处理首启/引导页（若存在）
        clickAny(new BySelector[]{
                By.textStartsWith("Start"),
                By.textContains("Continue"),
                By.textContains("下一步"),
                By.descContains("Start"),
                By.clazz("android.widget.Button").clickable(true)
        });

        // 处理权限弹窗
        tapAllowIfPermissionDialog();
        snap("02_after_permission");

        // 打开搜索
        UiObject2 searchBtn = device.wait(
                Until.findObject(
                        By.descContains("Search").pkg(TARGET_PKG).clickable(true)
                ), 4000
        );
        if (searchBtn == null) {
            searchBtn = device.findObject(
                    By.clazz("android.widget.ImageView").descContains("Search")
            );
        }
        if (searchBtn != null) searchBtn.click();
        snap("03_search_panel");

        // 搜索输入
        UiObject2 searchInput = device.wait(
                Until.findObject(
                        By.clazz("android.widget.EditText").pkg(TARGET_PKG).focusable(true)
                ), 5000
        );
        if (searchInput != null) searchInput.setText("Saved Messages");

        // 点击第一个搜索结果（多重兜底）
        clickAny(new BySelector[]{
                By.textContains("Saved"),
                By.clazz("android.view.View").clickable(true),
                By.clazz("android.widget.LinearLayout").clickable(true)
        });
        snap("04_open_saved_messages");

        // 发送一条消息（若已进入会话）
        UiObject2 msgBox = device.wait(
                Until.findObject(
                        By.clazz("android.widget.EditText").pkg(TARGET_PKG).clickable(true)
                ), 5000
        );
        if (msgBox != null) {
            msgBox.setText("UIAutomator says hi \uD83D\uDC4B");
            UiObject2 sendBtn = device.findObject(By.descContains("Send"));
            if (sendBtn == null) {
                sendBtn = device.findObject(By.clazz("android.widget.ImageButton").clickable(true));
            }
            if (sendBtn != null) sendBtn.click();
        }
        snap("05_sent");

        // 弱断言：仍在目标包内
        boolean stillInApp = device.wait(Until.hasObject(By.pkg(TARGET_PKG).depth(0)), 3000);
        assertTrue("Not in target app after actions", stillInApp);
    }

    // ================= 工具函数 =================

    private void launchApp(String pkg) {
        var inst = InstrumentationRegistry.getInstrumentation();
        var ctx = inst.getContext();
        Intent intent = ctx.getPackageManager().getLaunchIntentForPackage(pkg);
        if (intent != null) {
            intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TASK);
            ctx.startActivity(intent);
        }
    }

    private String getLauncherPackage() {
        var ctx = InstrumentationRegistry.getInstrumentation().getContext();
        Intent intent = new Intent(Intent.ACTION_MAIN);
        intent.addCategory(Intent.CATEGORY_HOME);
        var res = ctx.getPackageManager().resolveActivity(intent, 0);
        return res.activityInfo.packageName;
    }

    private void tapAllowIfPermissionDialog() {
        String[] ids = new String[]{
                "com.android.permissioncontroller:id/permission_allow_button",
                "com.android.permissioncontroller:id/permission_allow_one_time_button",
                "com.android.permissioncontroller:id/permission_allow_foreground_only_button",
                "com.android.permissioncontroller:id/continue_button"
        };
        String[] texts = new String[]{
                "Allow", "允许", "始终允许", "仅在使用该应用时允许",
                "While using the app", "Allow only this time", "Continue", "继续"
        };
        for (String id : ids) {
            UiObject2 o = device.findObject(By.res(id));
            if (o != null) safeClick(o);
        }
        for (String t : texts) {
            UiObject2 o = device.findObject(By.textContains(t));
            if (o != null) safeClick(o);
        }
    }

    private void clickAny(BySelector[] selectors) {
        for (BySelector sel : selectors) {
            UiObject2 o = device.findObject(sel);
            if (o != null) safeClick(o);
        }
    }

    private void safeClick(UiObject2 o) {
        try { o.click(); } catch (Throwable ignored) {}
    }

    private void snap(String name) {
        try {
            File f = new File(SHOT_DIR + "/uiauto_" + name + ".png");
            device.takeScreenshot(f);
        } catch (Throwable ignored) {}
    }
}