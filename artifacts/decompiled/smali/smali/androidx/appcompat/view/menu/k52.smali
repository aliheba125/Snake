.class public final Landroidx/appcompat/view/menu/k52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/cb2;

.field public final synthetic n:Landroid/os/Bundle;

.field public final synthetic o:Landroidx/appcompat/view/menu/h42;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/h42;Landroidx/appcompat/view/menu/cb2;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/k52;->o:Landroidx/appcompat/view/menu/h42;

    iput-object p2, p0, Landroidx/appcompat/view/menu/k52;->m:Landroidx/appcompat/view/menu/cb2;

    iput-object p3, p0, Landroidx/appcompat/view/menu/k52;->n:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/k52;->o:Landroidx/appcompat/view/menu/h42;

    invoke-static {v0}, Landroidx/appcompat/view/menu/h42;->B(Landroidx/appcompat/view/menu/h42;)Landroidx/appcompat/view/menu/xs1;

    move-result-object v0

    const-string v1, "Failed to send default event parameters to service"

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/k52;->o:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroidx/appcompat/view/menu/k52;->m:Landroidx/appcompat/view/menu/cb2;

    invoke-static {v2}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroidx/appcompat/view/menu/k52;->n:Landroid/os/Bundle;

    iget-object v3, p0, Landroidx/appcompat/view/menu/k52;->m:Landroidx/appcompat/view/menu/cb2;

    invoke-interface {v0, v2, v3}, Landroidx/appcompat/view/menu/xs1;->G0(Landroid/os/Bundle;Landroidx/appcompat/view/menu/cb2;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Landroidx/appcompat/view/menu/k52;->o:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
