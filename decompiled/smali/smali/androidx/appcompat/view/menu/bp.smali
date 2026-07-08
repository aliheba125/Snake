.class public abstract Landroidx/appcompat/view/menu/bp;
.super Landroidx/appcompat/view/menu/nh;
.source "SourceFile"


# instance fields
.field public o:J

.field public p:Z

.field public q:Landroidx/appcompat/view/menu/k4;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/nh;-><init>()V

    return-void
.end method

.method public static synthetic K(Landroidx/appcompat/view/menu/bp;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/bp;->J(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: incrementUseCount"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final F(Z)V
    .locals 4

    iget-wide v0, p0, Landroidx/appcompat/view/menu/bp;->o:J

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/bp;->G(Z)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/appcompat/view/menu/bp;->o:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Landroidx/appcompat/view/menu/bp;->p:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bp;->shutdown()V

    :cond_1
    return-void
.end method

.method public final G(Z)J
    .locals 2

    if-eqz p1, :cond_0

    const-wide v0, 0x100000000L

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    :goto_0
    return-wide v0
.end method

.method public final H(Landroidx/appcompat/view/menu/dm;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/bp;->q:Landroidx/appcompat/view/menu/k4;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/k4;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/k4;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/bp;->q:Landroidx/appcompat/view/menu/k4;

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/k4;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public I()J
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/bp;->q:Landroidx/appcompat/view/menu/k4;

    const-wide v1, 0x7fffffffffffffffL

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/k4;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method

.method public final J(Z)V
    .locals 4

    iget-wide v0, p0, Landroidx/appcompat/view/menu/bp;->o:J

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/bp;->G(Z)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/appcompat/view/menu/bp;->o:J

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/bp;->p:Z

    :cond_0
    return-void
.end method

.method public final L()Z
    .locals 5

    iget-wide v0, p0, Landroidx/appcompat/view/menu/bp;->o:J

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/bp;->G(Z)J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final M()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/bp;->q:Landroidx/appcompat/view/menu/k4;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/k4;->isEmpty()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final N()Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/bp;->q:Landroidx/appcompat/view/menu/k4;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/k4;->s()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/dm;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/dm;->run()V

    const/4 v0, 0x1

    return v0
.end method

.method public abstract shutdown()V
.end method
