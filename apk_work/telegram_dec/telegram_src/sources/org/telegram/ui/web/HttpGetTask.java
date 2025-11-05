package org.telegram.ui.web;

import android.os.AsyncTask;
import com.huawei.location.lite.common.http.request.BaseRequest;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import org.telegram.messenger.Utilities;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class HttpGetTask extends AsyncTask {
    private final Utilities.Callback callback;
    private Exception exception;
    private final HashMap headers = new HashMap();

    public HttpGetTask(Utilities.Callback callback) {
        this.callback = callback;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public String doInBackground(String... strArr) throws IOException {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(strArr[0]).openConnection();
            for (Map.Entry entry : this.headers.entrySet()) {
                if (entry.getKey() != null && entry.getValue() != null) {
                    httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
            }
            httpURLConnection.setRequestMethod(BaseRequest.METHOD_GET);
            httpURLConnection.setDoInput(true);
            int responseCode = httpURLConnection.getResponseCode();
            BufferedReader bufferedReader = (responseCode < 200 || responseCode >= 300) ? new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream())) : new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    bufferedReader.close();
                    return sb.toString();
                }
                sb.append(line);
            }
        } catch (Exception e) {
            this.exception = e;
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        Utilities.Callback callback = this.callback;
        if (callback != null) {
            if (this.exception != null) {
                str = null;
            }
            callback.run(str);
        }
    }
}
