.class public Landroidx/appcompat/view/menu/ny0$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ny0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroidx/appcompat/view/menu/ny0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ny0;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/ny0$a;->a:Landroidx/appcompat/view/menu/ny0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Landroidx/appcompat/view/menu/ny0;->c()Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/ny0$a;->a:Landroidx/appcompat/view/menu/ny0;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ny0;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p1, p0, Landroidx/appcompat/view/menu/ny0$a;->a:Landroidx/appcompat/view/menu/ny0;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ny0;->d()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Landroidx/appcompat/view/menu/ny0;->c()Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/ny0$a;->a:Landroidx/appcompat/view/menu/ny0;

    invoke-static {p1}, Landroidx/appcompat/view/menu/ny0;->a(Landroidx/appcompat/view/menu/ny0;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p1

    iget-object p2, p0, Landroidx/appcompat/view/menu/ny0$a;->a:Landroidx/appcompat/view/menu/ny0;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->j(Ljava/lang/Runnable;J)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ny0$a;->a:Landroidx/appcompat/view/menu/ny0;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ny0;->b()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ny0$a;->a:Landroidx/appcompat/view/menu/ny0;

    return-void
.end method
