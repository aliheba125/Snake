.class public Landroidx/appcompat/view/menu/pu1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/appcompat/view/menu/o82;

.field public b:Z

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/o82;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/appcompat/view/menu/pu1;->a:Landroidx/appcompat/view/menu/o82;

    return-void
.end method

.method public static bridge synthetic a(Landroidx/appcompat/view/menu/pu1;)Landroidx/appcompat/view/menu/o82;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/pu1;->a:Landroidx/appcompat/view/menu/o82;

    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/pu1;->a:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->p0()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/pu1;->a:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/pu1;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/pu1;->a:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Landroidx/appcompat/view/menu/pu1;->a:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->g0()Landroidx/appcompat/view/menu/cu1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cu1;->A()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/pu1;->c:Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/pu1;->a:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/pu1;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Registering connectivity change receiver. Network connected"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/pu1;->b:Z

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/pu1;->a:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->p0()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/pu1;->a:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/pu1;->a:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/pu1;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/pu1;->a:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Unregistering connectivity change receiver"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/pu1;->b:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/pu1;->c:Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/pu1;->a:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->a()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/pu1;->a:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v2, "Failed to unregister the network broadcast receiver"

    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/view/menu/pu1;->a:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/o82;->p0()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Landroidx/appcompat/view/menu/pu1;->a:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object p2

    const-string v0, "NetworkBroadcastReceiver received action"

    invoke-virtual {p2, v0, p1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/pu1;->a:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/o82;->g0()Landroidx/appcompat/view/menu/cu1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/cu1;->A()Z

    move-result p1

    iget-boolean p2, p0, Landroidx/appcompat/view/menu/pu1;->c:Z

    if-eq p2, p1, :cond_0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/pu1;->c:Z

    iget-object p2, p0, Landroidx/appcompat/view/menu/pu1;->a:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object p2

    new-instance v0, Landroidx/appcompat/view/menu/vu1;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/vu1;-><init>(Landroidx/appcompat/view/menu/pu1;Z)V

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/jw1;->D(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    iget-object p2, p0, Landroidx/appcompat/view/menu/pu1;->a:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object p2

    const-string v0, "NetworkBroadcastReceiver received unknown action"

    invoke-virtual {p2, v0, p1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
