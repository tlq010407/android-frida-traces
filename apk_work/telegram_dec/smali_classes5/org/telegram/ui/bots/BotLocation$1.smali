.class Lorg/telegram/ui/bots/BotLocation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/bots/BotLocation;->requestObject(Lorg/telegram/messenger/Utilities$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/bots/BotLocation;

.field final synthetic val$listener:[Landroid/location/LocationListener;

.field final synthetic val$lm:Landroid/location/LocationManager;

.field final synthetic val$whenDone:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method constructor <init>(Lorg/telegram/ui/bots/BotLocation;Landroid/location/LocationManager;[Landroid/location/LocationListener;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/bots/BotLocation$1;->this$0:Lorg/telegram/ui/bots/BotLocation;

    iput-object p2, p0, Lorg/telegram/ui/bots/BotLocation$1;->val$lm:Landroid/location/LocationManager;

    iput-object p3, p0, Lorg/telegram/ui/bots/BotLocation$1;->val$listener:[Landroid/location/LocationListener;

    iput-object p4, p0, Lorg/telegram/ui/bots/BotLocation$1;->val$whenDone:Lorg/telegram/messenger/Utilities$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/bots/BotLocation$1;->val$lm:Landroid/location/LocationManager;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotLocation$1;->val$listener:[Landroid/location/LocationListener;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotLocation$1;->val$whenDone:Lorg/telegram/messenger/Utilities$Callback;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotLocation$1;->this$0:Lorg/telegram/ui/bots/BotLocation;

    invoke-static {v1, p1}, Lorg/telegram/ui/bots/BotLocation;->access$000(Lorg/telegram/ui/bots/BotLocation;Landroid/location/Location;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method
