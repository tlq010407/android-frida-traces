.class public Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/analytics/connector/AnalyticsConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConditionalUserProperty"
.end annotation


# instance fields
.field public creationTimestamp:J

.field public name:Ljava/lang/String;

.field public origin:Ljava/lang/String;

.field public timeToLive:J

.field public triggerEventName:Ljava/lang/String;

.field public triggerTimeout:J

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
