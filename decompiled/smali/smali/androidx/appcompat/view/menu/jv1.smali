.class public final Landroidx/appcompat/view/menu/jv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final l:Ljava/lang/String;

.field public final synthetic m:Landroidx/appcompat/view/menu/lv1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/lv1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/jv1;->m:Landroidx/appcompat/view/menu/lv1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/view/menu/jv1;->l:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Landroidx/appcompat/view/menu/jv1;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/jv1;->l:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    if-nez p2, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/jv1;->m:Landroidx/appcompat/view/menu/lv1;

    iget-object p1, p1, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string p2, "Install Referrer connection returned with null binder"

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {p2}, Landroidx/appcompat/view/menu/uk1;->j(Landroid/os/IBinder;)Landroidx/appcompat/view/menu/zj1;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/jv1;->m:Landroidx/appcompat/view/menu/lv1;

    iget-object p1, p1, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string p2, "Install Referrer Service implementation was not found"

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroidx/appcompat/view/menu/jv1;->m:Landroidx/appcompat/view/menu/lv1;

    iget-object p2, p2, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object p2

    const-string v0, "Install Referrer Service connected"

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/appcompat/view/menu/jv1;->m:Landroidx/appcompat/view/menu/lv1;

    iget-object p2, p2, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/cx1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object p2

    new-instance v0, Landroidx/appcompat/view/menu/pv1;

    invoke-direct {v0, p0, p1, p0}, Landroidx/appcompat/view/menu/pv1;-><init>(Landroidx/appcompat/view/menu/jv1;Landroidx/appcompat/view/menu/zj1;Landroid/content/ServiceConnection;)V

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/jw1;->D(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    iget-object p2, p0, Landroidx/appcompat/view/menu/jv1;->m:Landroidx/appcompat/view/menu/lv1;

    iget-object p2, p2, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object p2

    const-string v0, "Exception occurred while calling Install Referrer API"

    invoke-virtual {p2, v0, p1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/view/menu/jv1;->m:Landroidx/appcompat/view/menu/lv1;

    iget-object p1, p1, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string v0, "Install Referrer Service disconnected"

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return-void
.end method
