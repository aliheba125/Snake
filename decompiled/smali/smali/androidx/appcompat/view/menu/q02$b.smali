.class public abstract Landroidx/appcompat/view/menu/q02$b;
.super Landroidx/appcompat/view/menu/dx1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/q02;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field public final m:Landroidx/appcompat/view/menu/q02;

.field public n:Landroidx/appcompat/view/menu/q02;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/q02;)V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/dx1;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/q02$b;->m:Landroidx/appcompat/view/menu/q02;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/q02;->F()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/q02;->y()Landroidx/appcompat/view/menu/q02;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/q02$b;->n:Landroidx/appcompat/view/menu/q02;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static h(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/v42;->a()Landroidx/appcompat/view/menu/v42;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/v42;->c(Ljava/lang/Object;)Landroidx/appcompat/view/menu/j52;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroidx/appcompat/view/menu/j52;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/q02$b;->m:Landroidx/appcompat/view/menu/q02;

    sget v1, Landroidx/appcompat/view/menu/q02$c;->e:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroidx/appcompat/view/menu/q02;->q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/q02$b;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/q02$b;->k()Landroidx/appcompat/view/menu/w32;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/q02;

    iput-object v1, v0, Landroidx/appcompat/view/menu/q02$b;->n:Landroidx/appcompat/view/menu/q02;

    return-object v0
.end method

.method public final synthetic e([BII)Landroidx/appcompat/view/menu/dx1;
    .locals 1

    const/4 p2, 0x0

    sget-object v0, Landroidx/appcompat/view/menu/qz1;->c:Landroidx/appcompat/view/menu/qz1;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/appcompat/view/menu/q02$b;->p([BIILandroidx/appcompat/view/menu/qz1;)Landroidx/appcompat/view/menu/q02$b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic f([BIILandroidx/appcompat/view/menu/qz1;)Landroidx/appcompat/view/menu/dx1;
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/q02$b;->p([BIILandroidx/appcompat/view/menu/qz1;)Landroidx/appcompat/view/menu/q02$b;

    move-result-object p1

    return-object p1
.end method

.method public final g(Landroidx/appcompat/view/menu/q02;)Landroidx/appcompat/view/menu/q02$b;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/q02$b;->m:Landroidx/appcompat/view/menu/q02;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/q02;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/q02$b;->n:Landroidx/appcompat/view/menu/q02;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q02;->F()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/q02$b;->o()V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/q02$b;->n:Landroidx/appcompat/view/menu/q02;

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/q02$b;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public i()Landroidx/appcompat/view/menu/q02;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/q02$b;->n:Landroidx/appcompat/view/menu/q02;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q02;->F()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/q02$b;->n:Landroidx/appcompat/view/menu/q02;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/q02$b;->n:Landroidx/appcompat/view/menu/q02;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q02;->C()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/q02$b;->n:Landroidx/appcompat/view/menu/q02;

    return-object v0
.end method

.method public synthetic j()Landroidx/appcompat/view/menu/w32;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/q02$b;->q()Landroidx/appcompat/view/menu/q02;

    move-result-object v0

    return-object v0
.end method

.method public synthetic k()Landroidx/appcompat/view/menu/w32;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/q02$b;->i()Landroidx/appcompat/view/menu/q02;

    move-result-object v0

    return-object v0
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/q02$b;->n:Landroidx/appcompat/view/menu/q02;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q02;->F()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/q02$b;->o()V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/q02$b;->m:Landroidx/appcompat/view/menu/q02;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q02;->y()Landroidx/appcompat/view/menu/q02;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/q02$b;->n:Landroidx/appcompat/view/menu/q02;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/q02$b;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/q02$b;->n:Landroidx/appcompat/view/menu/q02;

    return-void
.end method

.method public final p([BIILandroidx/appcompat/view/menu/qz1;)Landroidx/appcompat/view/menu/q02$b;
    .locals 7

    iget-object p2, p0, Landroidx/appcompat/view/menu/q02$b;->n:Landroidx/appcompat/view/menu/q02;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/q02;->F()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/q02$b;->o()V

    :cond_0
    :try_start_0
    invoke-static {}, Landroidx/appcompat/view/menu/v42;->a()Landroidx/appcompat/view/menu/v42;

    move-result-object p2

    iget-object v0, p0, Landroidx/appcompat/view/menu/q02$b;->n:Landroidx/appcompat/view/menu/q02;

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/v42;->c(Ljava/lang/Object;)Landroidx/appcompat/view/menu/j52;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/q02$b;->n:Landroidx/appcompat/view/menu/q02;

    const/4 v4, 0x0

    new-instance v6, Landroidx/appcompat/view/menu/ox1;

    invoke-direct {v6, p4}, Landroidx/appcompat/view/menu/ox1;-><init>(Landroidx/appcompat/view/menu/qz1;)V

    move-object v3, p1

    move v5, p3

    invoke-interface/range {v1 .. v6}, Landroidx/appcompat/view/menu/j52;->i(Ljava/lang/Object;[BIILandroidx/appcompat/view/menu/ox1;)V
    :try_end_0
    .catch Landroidx/appcompat/view/menu/s12; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    invoke-static {}, Landroidx/appcompat/view/menu/s12;->f()Landroidx/appcompat/view/menu/s12;

    move-result-object p1

    throw p1

    :goto_1
    throw p1
.end method

.method public final q()Landroidx/appcompat/view/menu/q02;
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/q02$b;->k()Landroidx/appcompat/view/menu/w32;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/q02;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q02;->E()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroidx/appcompat/view/menu/z62;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/z62;-><init>(Landroidx/appcompat/view/menu/w32;)V

    throw v1
.end method
