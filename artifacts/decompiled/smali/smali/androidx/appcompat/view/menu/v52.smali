.class public final Landroidx/appcompat/view/menu/v52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Z

.field public final synthetic n:Landroidx/appcompat/view/menu/cb2;

.field public final synthetic o:Z

.field public final synthetic p:Landroidx/appcompat/view/menu/if1;

.field public final synthetic q:Landroidx/appcompat/view/menu/if1;

.field public final synthetic r:Landroidx/appcompat/view/menu/h42;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/h42;ZLandroidx/appcompat/view/menu/cb2;ZLandroidx/appcompat/view/menu/if1;Landroidx/appcompat/view/menu/if1;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/v52;->r:Landroidx/appcompat/view/menu/h42;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/v52;->m:Z

    iput-object p3, p0, Landroidx/appcompat/view/menu/v52;->n:Landroidx/appcompat/view/menu/cb2;

    iput-boolean p4, p0, Landroidx/appcompat/view/menu/v52;->o:Z

    iput-object p5, p0, Landroidx/appcompat/view/menu/v52;->p:Landroidx/appcompat/view/menu/if1;

    iput-object p6, p0, Landroidx/appcompat/view/menu/v52;->q:Landroidx/appcompat/view/menu/if1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/v52;->r:Landroidx/appcompat/view/menu/h42;

    invoke-static {v0}, Landroidx/appcompat/view/menu/h42;->B(Landroidx/appcompat/view/menu/h42;)Landroidx/appcompat/view/menu/xs1;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/v52;->r:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send conditional user property to service"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/v52;->m:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/view/menu/v52;->n:Landroidx/appcompat/view/menu/cb2;

    invoke-static {v1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/appcompat/view/menu/v52;->r:Landroidx/appcompat/view/menu/h42;

    iget-boolean v2, p0, Landroidx/appcompat/view/menu/v52;->o:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroidx/appcompat/view/menu/v52;->p:Landroidx/appcompat/view/menu/if1;

    :goto_0
    iget-object v3, p0, Landroidx/appcompat/view/menu/v52;->n:Landroidx/appcompat/view/menu/cb2;

    invoke-virtual {v1, v0, v2, v3}, Landroidx/appcompat/view/menu/h42;->K(Landroidx/appcompat/view/menu/xs1;Landroidx/appcompat/view/menu/r;Landroidx/appcompat/view/menu/cb2;)V

    goto :goto_2

    :cond_2
    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/v52;->q:Landroidx/appcompat/view/menu/if1;

    iget-object v1, v1, Landroidx/appcompat/view/menu/if1;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/appcompat/view/menu/v52;->n:Landroidx/appcompat/view/menu/cb2;

    invoke-static {v1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/appcompat/view/menu/v52;->p:Landroidx/appcompat/view/menu/if1;

    iget-object v2, p0, Landroidx/appcompat/view/menu/v52;->n:Landroidx/appcompat/view/menu/cb2;

    invoke-interface {v0, v1, v2}, Landroidx/appcompat/view/menu/xs1;->o(Landroidx/appcompat/view/menu/if1;Landroidx/appcompat/view/menu/cb2;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroidx/appcompat/view/menu/v52;->p:Landroidx/appcompat/view/menu/if1;

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/xs1;->I(Landroidx/appcompat/view/menu/if1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/v52;->r:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v2, "Failed to send conditional user property to the service"

    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/v52;->r:Landroidx/appcompat/view/menu/h42;

    invoke-static {v0}, Landroidx/appcompat/view/menu/h42;->m0(Landroidx/appcompat/view/menu/h42;)V

    return-void
.end method
