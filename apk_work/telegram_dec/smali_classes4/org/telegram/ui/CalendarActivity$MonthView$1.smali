.class Lorg/telegram/ui/CalendarActivity$MonthView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CalendarActivity$MonthView;-><init>(Lorg/telegram/ui/CalendarActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

.field final synthetic val$this$0:Lorg/telegram/ui/CalendarActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CalendarActivity$MonthView;Lorg/telegram/ui/CalendarActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$1;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iput-object p2, p0, Lorg/telegram/ui/CalendarActivity$MonthView$1;->val$this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$1;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->messagesByDays:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->access$700(Lorg/telegram/ui/CalendarActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, -0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x1

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/CalendarActivity$MonthView$1;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget v4, v3, Lorg/telegram/ui/CalendarActivity$MonthView;->daysInMonth:I

    if-ge v0, v4, :cond_3

    iget-object v3, v3, Lorg/telegram/ui/CalendarActivity$MonthView;->messagesByDays:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/CalendarActivity$PeriodDay;

    if-eqz v3, :cond_2

    if-ne v1, p1, :cond_1

    iget v1, v3, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    :cond_1
    iget v2, v3, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-ltz v1, :cond_4

    if-ltz v2, :cond_4

    iget-object p1, v3, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/CalendarActivity;->access$502(Lorg/telegram/ui/CalendarActivity;I)I

    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$1;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1, v2}, Lorg/telegram/ui/CalendarActivity;->access$602(Lorg/telegram/ui/CalendarActivity;I)I

    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$1;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->access$800(Lorg/telegram/ui/CalendarActivity;)V

    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$1;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->access$900(Lorg/telegram/ui/CalendarActivity;)V

    :cond_4
    return-void
.end method
