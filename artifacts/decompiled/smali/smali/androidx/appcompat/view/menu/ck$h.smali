.class public final Landroidx/appcompat/view/menu/ck$h;
.super Landroidx/appcompat/view/menu/ck$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Z

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/gw0$d;ZZ)V
    .locals 2

    const-string v0, "operation"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/ck$f;-><init>(Landroidx/appcompat/view/menu/gw0$d;)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gw0$d;->h()Landroidx/appcompat/view/menu/gw0$d$b;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/gw0$d$b;->o:Landroidx/appcompat/view/menu/gw0$d$b;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gw0$d;->i()Landroidx/appcompat/view/menu/av;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/av;->H()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/av;->s()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gw0$d;->i()Landroidx/appcompat/view/menu/av;

    move-result-object v0

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/av;->J()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/av;->v()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/appcompat/view/menu/ck$h;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gw0$d;->h()Landroidx/appcompat/view/menu/gw0$d$b;

    move-result-object v0

    if-ne v0, v1, :cond_4

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gw0$d;->i()Landroidx/appcompat/view/menu/av;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/av;->n()Z

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gw0$d;->i()Landroidx/appcompat/view/menu/av;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/av;->m()Z

    move-result v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/ck$h;->c:Z

    if-eqz p3, :cond_6

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gw0$d;->i()Landroidx/appcompat/view/menu/av;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/av;->L()Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gw0$d;->i()Landroidx/appcompat/view/menu/av;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/av;->K()Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    :goto_2
    iput-object p1, p0, Landroidx/appcompat/view/menu/ck$h;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c()Landroidx/appcompat/view/menu/aw;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$h;->b:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ck$h;->d(Ljava/lang/Object;)Landroidx/appcompat/view/menu/aw;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/ck$h;->d:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/ck$h;->d(Ljava/lang/Object;)Landroidx/appcompat/view/menu/aw;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ck$f;->a()Landroidx/appcompat/view/menu/gw0$d;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/gw0$d;->i()Landroidx/appcompat/view/menu/av;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned Transition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ck$h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " which uses a different Transition  type than its shared element transition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ck$h;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    return-object v0
.end method

.method public final d(Ljava/lang/Object;)Landroidx/appcompat/view/menu/aw;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/yv;->b:Landroidx/appcompat/view/menu/aw;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/aw;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Landroidx/appcompat/view/menu/yv;->c:Landroidx/appcompat/view/menu/aw;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/aw;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for fragment "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ck$f;->a()Landroidx/appcompat/view/menu/gw0$d;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gw0$d;->i()Landroidx/appcompat/view/menu/av;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid framework Transition or AndroidX Transition"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$h;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final f()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$h;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$h;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ck$h;->c:Z

    return v0
.end method
