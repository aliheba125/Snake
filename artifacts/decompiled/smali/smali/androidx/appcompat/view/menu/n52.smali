.class public final Landroidx/appcompat/view/menu/n52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/oi1;

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic o:Landroidx/appcompat/view/menu/hm1;

.field public final synthetic p:Landroidx/appcompat/view/menu/h42;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/h42;Landroidx/appcompat/view/menu/oi1;Ljava/lang/String;Landroidx/appcompat/view/menu/hm1;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/n52;->p:Landroidx/appcompat/view/menu/h42;

    iput-object p2, p0, Landroidx/appcompat/view/menu/n52;->m:Landroidx/appcompat/view/menu/oi1;

    iput-object p3, p0, Landroidx/appcompat/view/menu/n52;->n:Ljava/lang/String;

    iput-object p4, p0, Landroidx/appcompat/view/menu/n52;->o:Landroidx/appcompat/view/menu/hm1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/n52;->p:Landroidx/appcompat/view/menu/h42;

    invoke-static {v1}, Landroidx/appcompat/view/menu/h42;->B(Landroidx/appcompat/view/menu/h42;)Landroidx/appcompat/view/menu/xs1;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/n52;->p:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v2, "Discarding data. Failed to send event to service to bundle"

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/n52;->p:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/n52;->o:Landroidx/appcompat/view/menu/hm1;

    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/view/menu/x92;->U(Landroidx/appcompat/view/menu/hm1;[B)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v2, p0, Landroidx/appcompat/view/menu/n52;->m:Landroidx/appcompat/view/menu/oi1;

    iget-object v3, p0, Landroidx/appcompat/view/menu/n52;->n:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroidx/appcompat/view/menu/xs1;->E1(Landroidx/appcompat/view/menu/oi1;Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/n52;->p:Landroidx/appcompat/view/menu/h42;

    invoke-static {v1}, Landroidx/appcompat/view/menu/h42;->m0(Landroidx/appcompat/view/menu/h42;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/n52;->p:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/n52;->o:Landroidx/appcompat/view/menu/hm1;

    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/view/menu/x92;->U(Landroidx/appcompat/view/menu/hm1;[B)V

    return-void

    :goto_0
    :try_start_2
    iget-object v2, p0, Landroidx/appcompat/view/menu/n52;->p:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    const-string v3, "Failed to send event to the service to bundle"

    invoke-virtual {v2, v3, v1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/n52;->p:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/n52;->o:Landroidx/appcompat/view/menu/hm1;

    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/view/menu/x92;->U(Landroidx/appcompat/view/menu/hm1;[B)V

    return-void

    :goto_1
    iget-object v2, p0, Landroidx/appcompat/view/menu/n52;->p:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v2

    iget-object v3, p0, Landroidx/appcompat/view/menu/n52;->o:Landroidx/appcompat/view/menu/hm1;

    invoke-virtual {v2, v3, v0}, Landroidx/appcompat/view/menu/x92;->U(Landroidx/appcompat/view/menu/hm1;[B)V

    throw v1
.end method
