.class public Lcom/huawei/location/crowdsourcing/upload/LW;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private yn(Ljava/io/FileInputStream;Ljava/io/BufferedOutputStream;J[B)V
    .locals 0

    .line 0
    long-to-int p4, p3

    const/4 p3, 0x0

    invoke-virtual {p1, p5, p3, p4}, Ljava/io/FileInputStream;->read([BII)I

    move-result p1

    const/4 p4, -0x1

    if-eq p1, p4, :cond_0

    invoke-virtual {p2, p5, p3, p1}, Ljava/io/BufferedOutputStream;->write([BII)V

    :cond_0
    return-void
.end method

.method private yn(Ljava/io/File;)Z
    .locals 6

    .line 0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/huawei/location/crowdsourcing/upload/LW;->yn(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    return p1
.end method

.method private yn(Ljava/util/List;Ljava/lang/String;Ljava/io/FileInputStream;)Z
    .locals 23

    .line 0
    const/4 v1, 0x1

    const-string v2, "UploadFile"

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    move-object/from16 v5, p1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/huawei/location/crowdsourcing/upload/entity/FB$yn;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, p2

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/Object;

    aput-object v9, v10, v3

    const-string v9, ".%02d"

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v0, 0x2000

    new-array v15, v0, [B

    :try_start_0
    new-instance v14, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-wide v12, v6, Lcom/huawei/location/crowdsourcing/upload/entity/FB$yn;->Vw:J

    int-to-long v10, v0

    cmp-long v0, v12, v10

    if-lez v0, :cond_1

    div-long v16, v12, v10

    rem-long v18, v12, v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    :goto_1
    int-to-long v12, v0

    cmp-long v9, v12, v16

    if-gez v9, :cond_0

    move-object/from16 v9, p0

    move-wide/from16 v20, v10

    move-object/from16 v10, p3

    move-object v11, v14

    move-wide/from16 v12, v20

    move-object/from16 v22, v14

    move-object v14, v15

    :try_start_2
    invoke-direct/range {v9 .. v14}, Lcom/huawei/location/crowdsourcing/upload/LW;->yn(Ljava/io/FileInputStream;Ljava/io/BufferedOutputStream;J[B)V

    add-int/2addr v0, v1

    move-wide/from16 v10, v20

    move-object/from16 v14, v22

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_2
    move-object v9, v0

    goto :goto_4

    :cond_0
    move-object/from16 v22, v14

    const-wide/16 v9, 0x0

    cmp-long v0, v18, v9

    if-lez v0, :cond_2

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    move-object/from16 v11, v22

    move-wide/from16 v12, v18

    move-object v14, v15

    invoke-direct/range {v9 .. v14}, Lcom/huawei/location/crowdsourcing/upload/LW;->yn(Ljava/io/FileInputStream;Ljava/io/BufferedOutputStream;J[B)V

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v22, v14

    goto :goto_2

    :cond_1
    move-object/from16 v22, v14

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    move-object/from16 v11, v22

    move-object v14, v15

    invoke-direct/range {v9 .. v14}, Lcom/huawei/location/crowdsourcing/upload/LW;->yn(Ljava/io/FileInputStream;Ljava/io/BufferedOutputStream;J[B)V

    :cond_2
    :goto_3
    invoke-virtual/range {v22 .. v22}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7

    :goto_4
    :try_start_4
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    move-object v10, v0

    :try_start_5
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v11, v0

    :try_start_6
    invoke-virtual {v9, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v10
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    const-string v0, "IOException"

    :goto_6
    invoke-static {v2, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catch_1
    const-string v0, "FileNotFoundException"

    goto :goto_6

    :goto_7
    new-instance v0, Lcom/huawei/location/crowdsourcing/upload/http/LW;

    iget-object v9, v6, Lcom/huawei/location/crowdsourcing/upload/entity/FB$yn;->yn:Ljava/lang/String;

    invoke-direct {v0, v9}, Lcom/huawei/location/crowdsourcing/upload/http/LW;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/huawei/location/crowdsourcing/upload/http/LW;->Vw(Ljava/lang/String;)Lcom/huawei/location/crowdsourcing/upload/http/LW;

    move-result-object v0

    iget-object v6, v6, Lcom/huawei/location/crowdsourcing/upload/entity/FB$yn;->FB:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v9, v8}, Lcom/huawei/location/crowdsourcing/upload/http/Vw;->yn(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/location/crowdsourcing/upload/http/Vw;

    goto :goto_8

    :cond_3
    const-class v6, Lcom/huawei/location/crowdsourcing/upload/http/yn;

    invoke-virtual {v0, v6}, Lcom/huawei/location/crowdsourcing/upload/http/Vw;->yn(Ljava/lang/Class;)Lcom/huawei/location/crowdsourcing/upload/http/yn;

    move-result-object v0

    if-eqz v0, :cond_5

    add-int/2addr v4, v1

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_4
    move v3, v0

    :cond_5
    return v3
.end method


# virtual methods
.method public yn(Ljava/util/List;Ljava/lang/String;)Z
    .locals 7

    .line 0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "split"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/huawei/location/crowdsourcing/upload/LW;->yn(Ljava/io/File;)Z

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    const-string v4, "UploadFile"

    const/4 v5, 0x0

    if-nez v2, :cond_0

    const-string p1, "make split dir failed"

    invoke-static {v4, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0, p1, p2, v2}, Lcom/huawei/location/crowdsourcing/upload/LW;->yn(Ljava/util/List;Ljava/lang/String;Ljava/io/FileInputStream;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    const-string p1, "IOException:....fileinputstream."

    invoke-static {v4, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, v1}, Lcom/huawei/location/crowdsourcing/upload/LW;->yn(Ljava/io/File;)Z

    return v5
.end method
