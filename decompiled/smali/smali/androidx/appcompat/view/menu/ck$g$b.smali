.class public final Landroidx/appcompat/view/menu/ck$g$b;
.super Landroidx/appcompat/view/menu/g80;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/dw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/ck$g;->f(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic n:Landroidx/appcompat/view/menu/ck$g;

.field public final synthetic o:Landroid/view/ViewGroup;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Landroidx/appcompat/view/menu/bo0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ck$g;Landroid/view/ViewGroup;Ljava/lang/Object;Landroidx/appcompat/view/menu/bo0;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ck$g$b;->n:Landroidx/appcompat/view/menu/ck$g;

    iput-object p2, p0, Landroidx/appcompat/view/menu/ck$g$b;->o:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/appcompat/view/menu/ck$g$b;->p:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/appcompat/view/menu/ck$g$b;->q:Landroidx/appcompat/view/menu/bo0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/g80;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$g$b;->n:Landroidx/appcompat/view/menu/ck$g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ck$g;->v()Landroidx/appcompat/view/menu/aw;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/ck$g$b;->o:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroidx/appcompat/view/menu/ck$g$b;->p:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/view/menu/aw;->j(Landroid/view/ViewGroup;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/ck$g;->C(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$g$b;->n:Landroidx/appcompat/view/menu/ck$g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ck$g;->s()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/ck$g$b;->p:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/appcompat/view/menu/ck$g$b;->o:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$g$b;->q:Landroidx/appcompat/view/menu/bo0;

    new-instance v1, Landroidx/appcompat/view/menu/ck$g$b$a;

    iget-object v3, p0, Landroidx/appcompat/view/menu/ck$g$b;->n:Landroidx/appcompat/view/menu/ck$g;

    invoke-direct {v1, v3, v2}, Landroidx/appcompat/view/menu/ck$g$b$a;-><init>(Landroidx/appcompat/view/menu/ck$g;Landroid/view/ViewGroup;)V

    iput-object v1, v0, Landroidx/appcompat/view/menu/bo0;->m:Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Started executing operations from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ck$g$b;->n:Landroidx/appcompat/view/menu/ck$g;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ck$g;->t()Landroidx/appcompat/view/menu/gw0$d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ck$g$b;->n:Landroidx/appcompat/view/menu/ck$g;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ck$g;->u()Landroidx/appcompat/view/menu/gw0$d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to start transition "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for container "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ck$g$b;->a()V

    sget-object v0, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    return-object v0
.end method
