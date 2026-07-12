.class public Landroidx/appcompat/view/menu/k11$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/k11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Landroidx/appcompat/view/menu/k11;

.field public final synthetic b:Landroidx/appcompat/view/menu/k11;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/k11;Landroidx/appcompat/view/menu/k11;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/k11$a;->b:Landroidx/appcompat/view/menu/k11;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/view/menu/k11$a;->a:Landroidx/appcompat/view/menu/k11;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Landroidx/appcompat/view/menu/k11;->b()Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/k11$a;->b:Landroidx/appcompat/view/menu/k11;

    invoke-static {v0}, Landroidx/appcompat/view/menu/k11;->d(Landroidx/appcompat/view/menu/k11;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Landroidx/appcompat/view/menu/k11$a;->a:Landroidx/appcompat/view/menu/k11;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p2}, Landroidx/appcompat/view/menu/k11;->a(Landroidx/appcompat/view/menu/k11;)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-static {}, Landroidx/appcompat/view/menu/k11;->b()Z

    iget-object p2, p0, Landroidx/appcompat/view/menu/k11$a;->a:Landroidx/appcompat/view/menu/k11;

    invoke-static {p2}, Landroidx/appcompat/view/menu/k11;->c(Landroidx/appcompat/view/menu/k11;)Landroidx/appcompat/view/menu/j11;

    move-result-object p2

    iget-object v0, p0, Landroidx/appcompat/view/menu/k11$a;->a:Landroidx/appcompat/view/menu/k11;

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroidx/appcompat/view/menu/j11;->l(Ljava/lang/Runnable;J)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/view/menu/k11$a;->a:Landroidx/appcompat/view/menu/k11;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
