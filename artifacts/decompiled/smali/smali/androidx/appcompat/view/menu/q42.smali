.class public final Landroidx/appcompat/view/menu/q42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/cb2;

.field public final synthetic n:Landroidx/appcompat/view/menu/h42;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/h42;Landroidx/appcompat/view/menu/cb2;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/q42;->n:Landroidx/appcompat/view/menu/h42;

    iput-object p2, p0, Landroidx/appcompat/view/menu/q42;->m:Landroidx/appcompat/view/menu/cb2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/q42;->n:Landroidx/appcompat/view/menu/h42;

    invoke-static {v0}, Landroidx/appcompat/view/menu/h42;->B(Landroidx/appcompat/view/menu/h42;)Landroidx/appcompat/view/menu/xs1;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/q42;->n:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Failed to reset data on the service: not connected to service"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/q42;->m:Landroidx/appcompat/view/menu/cb2;

    invoke-static {v1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/appcompat/view/menu/q42;->m:Landroidx/appcompat/view/menu/cb2;

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/xs1;->S(Landroidx/appcompat/view/menu/cb2;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/q42;->n:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v2, "Failed to reset data on the service: remote exception"

    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/q42;->n:Landroidx/appcompat/view/menu/h42;

    invoke-static {v0}, Landroidx/appcompat/view/menu/h42;->m0(Landroidx/appcompat/view/menu/h42;)V

    return-void
.end method
