.class public Lcom/snake/helper/DaemonService$DaemonInnerService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snake/helper/DaemonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DaemonInnerService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const-class p1, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    const/4 p2, 0x2

    const-string p3, "com.snake.snake_engine.inner"

    if-eqz p1, :cond_0

    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "Snake Engine Inner"

    invoke-direct {v0, p3, v1, p2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v1, "Inner helper for Snake Engine"

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    new-instance p1, Landroidx/appcompat/view/menu/gf0$e;

    invoke-direct {p1, p0, p3}, Landroidx/appcompat/view/menu/gf0$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/gf0$e;->s(Z)Landroidx/appcompat/view/menu/gf0$e;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gf0$e;->b()Landroid/app/Notification;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/16 v2, 0x2711

    if-lt v0, v1, :cond_2

    const/16 v1, 0x22

    if-lt v0, v1, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    :cond_1
    move v0, p3

    :goto_0
    invoke-static {p0, v2, p1, v0}, Landroidx/appcompat/view/menu/qi;->a(Lcom/snake/helper/DaemonService$DaemonInnerService;ILandroid/app/Notification;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :goto_1
    invoke-virtual {p0, p3}, Landroid/app/Service;->stopForeground(Z)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return p2
.end method
