.class Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ProfileActivity$SearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchResult"
.end annotation


# instance fields
.field private guid:I

.field private iconResId:I

.field private num:I

.field private openRunnable:Ljava/lang/Runnable;

.field private path:[Ljava/lang/String;

.field private rowName:Ljava/lang/String;

.field private searchTitle:Ljava/lang/String;

.field final synthetic this$1:Lorg/telegram/ui/ProfileActivity$SearchAdapter;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;ILjava/lang/Runnable;)V
    .locals 9

    .line 0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 9

    .line 0
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 9

    .line 0
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->this$1:Lorg/telegram/ui/ProfileActivity$SearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->guid:I

    iput-object p3, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->searchTitle:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->rowName:Ljava/lang/String;

    iput-object p8, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->openRunnable:Ljava/lang/Runnable;

    iput p7, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->iconResId:I

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    filled-new-array {p5, p6}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->path:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    filled-new-array {p5}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->path:[Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$37200(Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->guid:I

    return p0
.end method

.method static synthetic access$37300(Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->num:I

    return p0
.end method

.method static synthetic access$37302(Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->num:I

    return p1
.end method

.method static synthetic access$37500(Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->iconResId:I

    return p0
.end method

.method static synthetic access$37600(Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->path:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$37700(Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->searchTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$38700(Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->open()V

    return-void
.end method

.method private open()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->openRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->this$1:Lorg/telegram/ui/ProfileActivity$SearchAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$37100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->rowName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->scrollToFragmentRow(Lorg/telegram/ui/ActionBar/INavigationLayout;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    iget v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->guid:I

    iget p1, p1, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->guid:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v0}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    iget v1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->num:I

    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    iget v1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->guid:I

    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
