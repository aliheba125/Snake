.class public final Landroidx/appcompat/view/menu/jz1$a;
.super Landroidx/appcompat/view/menu/jz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/jz1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final d:[B

.field public final e:I

.field public final f:I

.field public g:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Landroidx/appcompat/view/menu/jz1;-><init>(Landroidx/appcompat/view/menu/mz1;)V

    if-eqz p1, :cond_1

    array-length p2, p1

    sub-int/2addr p2, p3

    or-int/2addr p2, p3

    const/4 v0, 0x0

    if-ltz p2, :cond_0

    iput-object p1, p0, Landroidx/appcompat/view/menu/jz1$a;->d:[B

    iput v0, p0, Landroidx/appcompat/view/menu/jz1$a;->e:I

    iput v0, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I

    iput p3, p0, Landroidx/appcompat/view/menu/jz1$a;->f:I

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, v0, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffer"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final A0([BII)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/jz1$a;->d:[B

    iget v1, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I

    add-int/2addr p1, p3

    iput p1, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Landroidx/appcompat/view/menu/jz1$b;

    iget v0, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/view/menu/jz1$a;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {v0, v1, p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Landroidx/appcompat/view/menu/jz1$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final H(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/jz1;->U(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/jz1;->N(J)V

    return-void
.end method

.method public final K(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/jz1;->V(II)V

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/jz1;->H(I)V

    return-void
.end method

.method public final L(IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/jz1;->V(II)V

    invoke-virtual {p0, p2, p3}, Landroidx/appcompat/view/menu/jz1;->N(J)V

    return-void
.end method

.method public final M(ILandroidx/appcompat/view/menu/qx1;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/jz1;->V(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Landroidx/appcompat/view/menu/jz1;->b0(II)V

    invoke-virtual {p0, v1, p2}, Landroidx/appcompat/view/menu/jz1;->n(ILandroidx/appcompat/view/menu/qx1;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/view/menu/jz1;->V(II)V

    return-void
.end method

.method public final N(J)V
    .locals 9

    invoke-static {}, Landroidx/appcompat/view/menu/jz1;->W()Z

    move-result v0

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jz1;->b()I

    move-result v0

    const/16 v6, 0xa

    if-lt v0, v6, :cond_1

    :goto_0
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/jz1$a;->d:[B

    iget v1, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I

    int-to-long v1, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Landroidx/appcompat/view/menu/w72;->m([BJB)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/jz1$a;->d:[B

    iget v6, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I

    int-to-long v6, v6

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    invoke-static {v0, v6, v7, v8}, Landroidx/appcompat/view/menu/w72;->m([BJB)V

    ushr-long/2addr p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/jz1$a;->d:[B

    iget v1, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/jz1$a;->d:[B

    iget v6, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-long/2addr p1, v1

    goto :goto_1

    :goto_2
    new-instance p2, Landroidx/appcompat/view/menu/jz1$b;

    iget v0, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/view/menu/jz1$a;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroidx/appcompat/view/menu/jz1$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final U(I)V
    .locals 4

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/jz1$a;->d:[B

    iget v1, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/jz1$a;->d:[B

    iget v1, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :goto_1
    new-instance v0, Landroidx/appcompat/view/menu/jz1$b;

    iget v1, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroidx/appcompat/view/menu/jz1$a;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/view/menu/jz1$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final V(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/jz1;->U(I)V

    return-void
.end method

.method public final a([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/jz1$a;->A0([BII)V

    return-void
.end method

.method public final b()I
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/jz1$a;->f:I

    iget v1, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final b0(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/jz1;->V(II)V

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/jz1;->U(I)V

    return-void
.end method

.method public final j(B)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/jz1$a;->d:[B

    iget v1, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I

    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Landroidx/appcompat/view/menu/jz1$b;

    iget v1, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroidx/appcompat/view/menu/jz1$a;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/view/menu/jz1$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final k(I)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/jz1$a;->d:[B

    iget v1, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I

    add-int/lit8 v2, v1, 0x1

    int-to-byte v3, p1

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x2

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x3

    shr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Landroidx/appcompat/view/menu/jz1$b;

    iget v1, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroidx/appcompat/view/menu/jz1$a;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/view/menu/jz1$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final l(II)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/jz1;->V(II)V

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/jz1;->k(I)V

    return-void
.end method

.method public final m(IJ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/jz1;->V(II)V

    invoke-virtual {p0, p2, p3}, Landroidx/appcompat/view/menu/jz1;->s(J)V

    return-void
.end method

.method public final n(ILandroidx/appcompat/view/menu/qx1;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/jz1;->V(II)V

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/jz1;->t(Landroidx/appcompat/view/menu/qx1;)V

    return-void
.end method

.method public final o(ILandroidx/appcompat/view/menu/w32;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/jz1;->V(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Landroidx/appcompat/view/menu/jz1;->b0(II)V

    invoke-virtual {p0, v1, v2}, Landroidx/appcompat/view/menu/jz1;->V(II)V

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/jz1;->u(Landroidx/appcompat/view/menu/w32;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/view/menu/jz1;->V(II)V

    return-void
.end method

.method public final p(ILandroidx/appcompat/view/menu/w32;Landroidx/appcompat/view/menu/j52;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/jz1;->V(II)V

    move-object p1, p2

    check-cast p1, Landroidx/appcompat/view/menu/ax1;

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/ax1;->e(Landroidx/appcompat/view/menu/j52;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/jz1;->U(I)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/jz1;->a:Landroidx/appcompat/view/menu/pz1;

    invoke-interface {p3, p2, p1}, Landroidx/appcompat/view/menu/j52;->g(Ljava/lang/Object;Landroidx/appcompat/view/menu/d92;)V

    return-void
.end method

.method public final q(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/jz1;->V(II)V

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/jz1;->v(Ljava/lang/String;)V

    return-void
.end method

.method public final r(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/jz1;->V(II)V

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/jz1;->j(B)V

    return-void
.end method

.method public final s(J)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/jz1$a;->d:[B

    iget v1, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I

    add-int/lit8 v2, v1, 0x1

    long-to-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x2

    const/16 v4, 0x8

    shr-long v5, p1, v4

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x3

    const/16 v5, 0x10

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/lit8 v3, v1, 0x4

    const/16 v5, 0x18

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x5

    const/16 v5, 0x20

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/lit8 v3, v1, 0x6

    const/16 v5, 0x28

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x7

    const/16 v5, 0x30

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/2addr v1, v4

    iput v1, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Landroidx/appcompat/view/menu/jz1$b;

    iget v0, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/view/menu/jz1$a;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroidx/appcompat/view/menu/jz1$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final t(Landroidx/appcompat/view/menu/qx1;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/qx1;->t()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/jz1;->U(I)V

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/qx1;->r(Landroidx/appcompat/view/menu/sx1;)V

    return-void
.end method

.method public final u(Landroidx/appcompat/view/menu/w32;)V
    .locals 1

    invoke-interface {p1}, Landroidx/appcompat/view/menu/w32;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/jz1;->U(I)V

    invoke-interface {p1, p0}, Landroidx/appcompat/view/menu/w32;->c(Landroidx/appcompat/view/menu/jz1;)V

    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 5

    iget v0, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Landroidx/appcompat/view/menu/jz1;->v0(I)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Landroidx/appcompat/view/menu/jz1;->v0(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    add-int v1, v0, v2

    iput v1, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I

    iget-object v3, p0, Landroidx/appcompat/view/menu/jz1$a;->d:[B

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jz1;->b()I

    move-result v4

    invoke-static {p1, v3, v1, v4}, Landroidx/appcompat/view/menu/z72;->b(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v0, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Landroidx/appcompat/view/menu/jz1;->U(I)V

    iput v1, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-static {p1}, Landroidx/appcompat/view/menu/z72;->a(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/jz1;->U(I)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/jz1$a;->d:[B

    iget v2, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jz1;->b()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Landroidx/appcompat/view/menu/z72;->b(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I
    :try_end_0
    .catch Landroidx/appcompat/view/menu/f82; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    new-instance v0, Landroidx/appcompat/view/menu/jz1$b;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/jz1$b;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    iput v0, p0, Landroidx/appcompat/view/menu/jz1$a;->g:I

    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/view/menu/jz1;->w(Ljava/lang/String;Landroidx/appcompat/view/menu/f82;)V

    return-void
.end method
