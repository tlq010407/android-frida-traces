package com.huawei.wisesecurity.ucs.common.utils;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import org.telegram.messenger.LiteMode;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class IOUtils {
    public static long copy(Reader reader, Writer writer) {
        return copy(reader, writer, new char[LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM]);
    }

    public static long copy(Reader reader, Writer writer, char[] cArr) throws IOException {
        int i = reader.read(cArr);
        long j = 0;
        while (-1 != i) {
            writer.write(cArr, 0, i);
            j += i;
            i = reader.read(cArr);
        }
        return j;
    }

    public static String toString(InputStream inputStream, String str) throws IOException {
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream, str);
        try {
            StringWriter stringWriter = new StringWriter();
            try {
                copy(inputStreamReader, stringWriter);
                String string = stringWriter.toString();
                stringWriter.close();
                inputStreamReader.close();
                return string;
            } finally {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    inputStreamReader.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }
}
