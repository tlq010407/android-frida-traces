package com.huawei.location.lite.common.chain;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class Result {

    public static final class Failure extends Result {
        private final Data mOutputData;

        public Failure(Data data) {
            this.mOutputData = data;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && Failure.class == obj.getClass() && (obj instanceof Failure)) {
                return this.mOutputData.equals(((Failure) obj).mOutputData);
            }
            return false;
        }

        public Data getOutputData() {
            return this.mOutputData;
        }

        public int hashCode() {
            return this.mOutputData.hashCode() - 1087636498;
        }

        public String toString() {
            return "Failure {mOutputData=" + this.mOutputData + '}';
        }
    }

    public static final class Success extends Result {
        private final Data mOutputData;

        public Success(Data data) {
            this.mOutputData = data;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && Success.class == obj.getClass() && (obj instanceof Success)) {
                return this.mOutputData.equals(((Success) obj).mOutputData);
            }
            return false;
        }

        public Data getOutputData() {
            return this.mOutputData;
        }

        public int hashCode() {
            return this.mOutputData.hashCode() + 483703957;
        }

        public String toString() {
            return "Success {mOutputData=" + this.mOutputData + '}';
        }
    }

    Result() {
    }

    public static Result failure(Data data) {
        return new Failure(data);
    }

    public static Result success(Data data) {
        return new Success(data);
    }
}
