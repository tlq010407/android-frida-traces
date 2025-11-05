package kotlin.text;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Pair;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.sequences.Sequence;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
final class DelimitedRangesSequence implements Sequence {
    private final Function2 getNextMatch;
    private final CharSequence input;
    private final int limit;
    private final int startIndex;

    public DelimitedRangesSequence(CharSequence input, int i, int i2, Function2 getNextMatch) {
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(getNextMatch, "getNextMatch");
        this.input = input;
        this.startIndex = i;
        this.limit = i2;
        this.getNextMatch = getNextMatch;
    }

    @Override // kotlin.sequences.Sequence
    public Iterator iterator() {
        return new Iterator() { // from class: kotlin.text.DelimitedRangesSequence.iterator.1
            private int counter;
            private int currentStartIndex;
            private IntRange nextItem;
            private int nextSearchIndex;
            private int nextState = -1;

            {
                int iCoerceIn = RangesKt___RangesKt.coerceIn(DelimitedRangesSequence.this.startIndex, 0, DelimitedRangesSequence.this.input.length());
                this.currentStartIndex = iCoerceIn;
                this.nextSearchIndex = iCoerceIn;
            }

            /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            private final void calcNext() {
                Pair pair;
                IntRange intRange;
                if (this.nextSearchIndex < 0) {
                    this.nextState = 0;
                    this.nextItem = null;
                    return;
                }
                int i = -1;
                if (DelimitedRangesSequence.this.limit > 0) {
                    int i2 = this.counter + 1;
                    this.counter = i2;
                    if (i2 >= DelimitedRangesSequence.this.limit) {
                        intRange = new IntRange(this.currentStartIndex, StringsKt__StringsKt.getLastIndex(DelimitedRangesSequence.this.input));
                        this.nextItem = intRange;
                    } else if (this.nextSearchIndex <= DelimitedRangesSequence.this.input.length() && (pair = (Pair) DelimitedRangesSequence.this.getNextMatch.invoke(DelimitedRangesSequence.this.input, Integer.valueOf(this.nextSearchIndex))) != null) {
                        int iIntValue = ((Number) pair.component1()).intValue();
                        int iIntValue2 = ((Number) pair.component2()).intValue();
                        this.nextItem = RangesKt___RangesKt.until(this.currentStartIndex, iIntValue);
                        int i3 = iIntValue + iIntValue2;
                        this.currentStartIndex = i3;
                        i = i3 + (iIntValue2 == 0 ? 1 : 0);
                    } else {
                        intRange = new IntRange(this.currentStartIndex, StringsKt__StringsKt.getLastIndex(DelimitedRangesSequence.this.input));
                        this.nextItem = intRange;
                    }
                }
                this.nextSearchIndex = i;
                this.nextState = 1;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                if (this.nextState == -1) {
                    calcNext();
                }
                return this.nextState == 1;
            }

            @Override // java.util.Iterator
            public IntRange next() {
                if (this.nextState == -1) {
                    calcNext();
                }
                if (this.nextState == 0) {
                    throw new NoSuchElementException();
                }
                IntRange intRange = this.nextItem;
                Intrinsics.checkNotNull(intRange, "null cannot be cast to non-null type kotlin.ranges.IntRange");
                this.nextItem = null;
                this.nextState = -1;
                return intRange;
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            }
        };
    }
}
