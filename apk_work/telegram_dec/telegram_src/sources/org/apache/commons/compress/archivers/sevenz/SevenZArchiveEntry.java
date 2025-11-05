package org.apache.commons.compress.archivers.sevenz;

import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class SevenZArchiveEntry {
    static final SevenZArchiveEntry[] EMPTY_SEVEN_Z_ARCHIVE_ENTRY_ARRAY = new SevenZArchiveEntry[0];
    private long accessDate;
    private long compressedCrc;
    private long compressedSize;
    private Iterable contentMethods;
    private long crc;
    private long creationDate;
    private boolean hasAccessDate;
    private boolean hasCrc;
    private boolean hasCreationDate;
    private boolean hasLastModifiedDate;
    private boolean hasStream;
    private boolean hasWindowsAttributes;
    private boolean isAntiItem;
    private boolean isDirectory;
    private long lastModifiedDate;
    private String name;
    private long size;
    private int windowsAttributes;

    private boolean equalSevenZMethods(Iterable iterable, Iterable iterable2) {
        if (iterable == null) {
            return iterable2 == null;
        }
        if (iterable2 == null) {
            return false;
        }
        Iterator it = iterable.iterator();
        Iterator it2 = iterable2.iterator();
        while (it.hasNext()) {
            if (!it2.hasNext() || !((SevenZMethodConfiguration) it.next()).equals(it2.next())) {
                return false;
            }
        }
        return !it2.hasNext();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SevenZArchiveEntry sevenZArchiveEntry = (SevenZArchiveEntry) obj;
        return Objects.equals(this.name, sevenZArchiveEntry.name) && this.hasStream == sevenZArchiveEntry.hasStream && this.isDirectory == sevenZArchiveEntry.isDirectory && this.isAntiItem == sevenZArchiveEntry.isAntiItem && this.hasCreationDate == sevenZArchiveEntry.hasCreationDate && this.hasLastModifiedDate == sevenZArchiveEntry.hasLastModifiedDate && this.hasAccessDate == sevenZArchiveEntry.hasAccessDate && this.creationDate == sevenZArchiveEntry.creationDate && this.lastModifiedDate == sevenZArchiveEntry.lastModifiedDate && this.accessDate == sevenZArchiveEntry.accessDate && this.hasWindowsAttributes == sevenZArchiveEntry.hasWindowsAttributes && this.windowsAttributes == sevenZArchiveEntry.windowsAttributes && this.hasCrc == sevenZArchiveEntry.hasCrc && this.crc == sevenZArchiveEntry.crc && this.compressedCrc == sevenZArchiveEntry.compressedCrc && this.size == sevenZArchiveEntry.size && this.compressedSize == sevenZArchiveEntry.compressedSize && equalSevenZMethods(this.contentMethods, sevenZArchiveEntry.contentMethods);
    }

    public Iterable getContentMethods() {
        return this.contentMethods;
    }

    public long getCrcValue() {
        return this.crc;
    }

    public boolean getHasAccessDate() {
        return this.hasAccessDate;
    }

    public boolean getHasCrc() {
        return this.hasCrc;
    }

    public boolean getHasCreationDate() {
        return this.hasCreationDate;
    }

    public boolean getHasLastModifiedDate() {
        return this.hasLastModifiedDate;
    }

    public boolean getHasWindowsAttributes() {
        return this.hasWindowsAttributes;
    }

    public String getName() {
        return this.name;
    }

    public long getSize() {
        return this.size;
    }

    public boolean hasStream() {
        return this.hasStream;
    }

    public int hashCode() {
        String name = getName();
        if (name == null) {
            return 0;
        }
        return name.hashCode();
    }

    public boolean isDirectory() {
        return this.isDirectory;
    }

    public void setAccessDate(long j) {
        this.accessDate = j;
    }

    public void setAntiItem(boolean z) {
        this.isAntiItem = z;
    }

    public void setContentMethods(Iterable iterable) {
        List listUnmodifiableList;
        if (iterable != null) {
            LinkedList linkedList = new LinkedList();
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                linkedList.addLast((SevenZMethodConfiguration) it.next());
            }
            listUnmodifiableList = Collections.unmodifiableList(linkedList);
        } else {
            listUnmodifiableList = null;
        }
        this.contentMethods = listUnmodifiableList;
    }

    public void setCrcValue(long j) {
        this.crc = j;
    }

    public void setCreationDate(long j) {
        this.creationDate = j;
    }

    public void setDirectory(boolean z) {
        this.isDirectory = z;
    }

    public void setHasAccessDate(boolean z) {
        this.hasAccessDate = z;
    }

    public void setHasCrc(boolean z) {
        this.hasCrc = z;
    }

    public void setHasCreationDate(boolean z) {
        this.hasCreationDate = z;
    }

    public void setHasLastModifiedDate(boolean z) {
        this.hasLastModifiedDate = z;
    }

    public void setHasStream(boolean z) {
        this.hasStream = z;
    }

    public void setHasWindowsAttributes(boolean z) {
        this.hasWindowsAttributes = z;
    }

    public void setLastModifiedDate(long j) {
        this.lastModifiedDate = j;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setSize(long j) {
        this.size = j;
    }

    public void setWindowsAttributes(int i) {
        this.windowsAttributes = i;
    }
}
