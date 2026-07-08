.class public abstract Landroidx/appcompat/view/menu/w8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/db;

.field public static final b:I

.field public static final c:I

.field public static final d:Landroidx/appcompat/view/menu/my0;

.field public static final e:Landroidx/appcompat/view/menu/my0;

.field public static final f:Landroidx/appcompat/view/menu/my0;

.field public static final g:Landroidx/appcompat/view/menu/my0;

.field public static final h:Landroidx/appcompat/view/menu/my0;

.field public static final i:Landroidx/appcompat/view/menu/my0;

.field public static final j:Landroidx/appcompat/view/menu/my0;

.field public static final k:Landroidx/appcompat/view/menu/my0;

.field public static final l:Landroidx/appcompat/view/menu/my0;

.field public static final m:Landroidx/appcompat/view/menu/my0;

.field public static final n:Landroidx/appcompat/view/menu/my0;

.field public static final o:Landroidx/appcompat/view/menu/my0;

.field public static final p:Landroidx/appcompat/view/menu/my0;

.field public static final q:Landroidx/appcompat/view/menu/my0;

.field public static final r:Landroidx/appcompat/view/menu/my0;

.field public static final s:Landroidx/appcompat/view/menu/my0;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Landroidx/appcompat/view/menu/db;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/db;-><init>(JLandroidx/appcompat/view/menu/db;Landroidx/appcompat/view/menu/v8;I)V

    sput-object v6, Landroidx/appcompat/view/menu/w8;->a:Landroidx/appcompat/view/menu/db;

    const-string v7, "kotlinx.coroutines.bufferedChannel.segmentSize"

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xc

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Landroidx/appcompat/view/menu/ty0;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Landroidx/appcompat/view/menu/w8;->b:I

    const-string v1, "kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations"

    const/16 v2, 0x2710

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/appcompat/view/menu/ty0;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Landroidx/appcompat/view/menu/w8;->c:I

    new-instance v0, Landroidx/appcompat/view/menu/my0;

    const-string v1, "BUFFERED"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/my0;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/w8;->d:Landroidx/appcompat/view/menu/my0;

    new-instance v0, Landroidx/appcompat/view/menu/my0;

    const-string v1, "SHOULD_BUFFER"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/my0;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/w8;->e:Landroidx/appcompat/view/menu/my0;

    new-instance v0, Landroidx/appcompat/view/menu/my0;

    const-string v1, "S_RESUMING_BY_RCV"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/my0;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/w8;->f:Landroidx/appcompat/view/menu/my0;

    new-instance v0, Landroidx/appcompat/view/menu/my0;

    const-string v1, "RESUMING_BY_EB"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/my0;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/w8;->g:Landroidx/appcompat/view/menu/my0;

    new-instance v0, Landroidx/appcompat/view/menu/my0;

    const-string v1, "POISONED"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/my0;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/w8;->h:Landroidx/appcompat/view/menu/my0;

    new-instance v0, Landroidx/appcompat/view/menu/my0;

    const-string v1, "DONE_RCV"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/my0;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/w8;->i:Landroidx/appcompat/view/menu/my0;

    new-instance v0, Landroidx/appcompat/view/menu/my0;

    const-string v1, "INTERRUPTED_SEND"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/my0;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/w8;->j:Landroidx/appcompat/view/menu/my0;

    new-instance v0, Landroidx/appcompat/view/menu/my0;

    const-string v1, "INTERRUPTED_RCV"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/my0;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/w8;->k:Landroidx/appcompat/view/menu/my0;

    new-instance v0, Landroidx/appcompat/view/menu/my0;

    const-string v1, "CHANNEL_CLOSED"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/my0;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/w8;->l:Landroidx/appcompat/view/menu/my0;

    new-instance v0, Landroidx/appcompat/view/menu/my0;

    const-string v1, "SUSPEND"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/my0;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/w8;->m:Landroidx/appcompat/view/menu/my0;

    new-instance v0, Landroidx/appcompat/view/menu/my0;

    const-string v1, "SUSPEND_NO_WAITER"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/my0;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/w8;->n:Landroidx/appcompat/view/menu/my0;

    new-instance v0, Landroidx/appcompat/view/menu/my0;

    const-string v1, "FAILED"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/my0;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/w8;->o:Landroidx/appcompat/view/menu/my0;

    new-instance v0, Landroidx/appcompat/view/menu/my0;

    const-string v1, "NO_RECEIVE_RESULT"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/my0;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/w8;->p:Landroidx/appcompat/view/menu/my0;

    new-instance v0, Landroidx/appcompat/view/menu/my0;

    const-string v1, "CLOSE_HANDLER_CLOSED"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/my0;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/w8;->q:Landroidx/appcompat/view/menu/my0;

    new-instance v0, Landroidx/appcompat/view/menu/my0;

    const-string v1, "CLOSE_HANDLER_INVOKED"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/my0;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/w8;->r:Landroidx/appcompat/view/menu/my0;

    new-instance v0, Landroidx/appcompat/view/menu/my0;

    const-string v1, "NO_CLOSE_CAUSE"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/my0;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/w8;->s:Landroidx/appcompat/view/menu/my0;

    return-void
.end method

.method public static final A(I)J
    .locals 2

    if-eqz p0, :cond_1

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    int-to-long v0, p0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static final B(Landroidx/appcompat/view/menu/x9;Ljava/lang/Object;Landroidx/appcompat/view/menu/fw;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2}, Landroidx/appcompat/view/menu/x9;->f(Ljava/lang/Object;Ljava/lang/Object;Landroidx/appcompat/view/menu/fw;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/x9;->D(Ljava/lang/Object;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic C(Landroidx/appcompat/view/menu/x9;Ljava/lang/Object;Landroidx/appcompat/view/menu/fw;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/w8;->B(Landroidx/appcompat/view/menu/x9;Ljava/lang/Object;Landroidx/appcompat/view/menu/fw;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic a(JZ)J
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/w8;->v(JZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic b(JI)J
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/w8;->w(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic c(JLandroidx/appcompat/view/menu/db;)Landroidx/appcompat/view/menu/db;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/w8;->x(JLandroidx/appcompat/view/menu/db;)Landroidx/appcompat/view/menu/db;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d()Landroidx/appcompat/view/menu/my0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/w8;->q:Landroidx/appcompat/view/menu/my0;

    return-object v0
.end method

.method public static final synthetic e()Landroidx/appcompat/view/menu/my0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/w8;->r:Landroidx/appcompat/view/menu/my0;

    return-object v0
.end method

.method public static final synthetic f()Landroidx/appcompat/view/menu/my0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/w8;->i:Landroidx/appcompat/view/menu/my0;

    return-object v0
.end method

.method public static final synthetic g()I
    .locals 1

    sget v0, Landroidx/appcompat/view/menu/w8;->c:I

    return v0
.end method

.method public static final synthetic h()Landroidx/appcompat/view/menu/my0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/w8;->o:Landroidx/appcompat/view/menu/my0;

    return-object v0
.end method

.method public static final synthetic i()Landroidx/appcompat/view/menu/my0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/w8;->k:Landroidx/appcompat/view/menu/my0;

    return-object v0
.end method

.method public static final synthetic j()Landroidx/appcompat/view/menu/my0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/w8;->j:Landroidx/appcompat/view/menu/my0;

    return-object v0
.end method

.method public static final synthetic k()Landroidx/appcompat/view/menu/my0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/w8;->e:Landroidx/appcompat/view/menu/my0;

    return-object v0
.end method

.method public static final synthetic l()Landroidx/appcompat/view/menu/my0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/w8;->s:Landroidx/appcompat/view/menu/my0;

    return-object v0
.end method

.method public static final synthetic m()Landroidx/appcompat/view/menu/my0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/w8;->p:Landroidx/appcompat/view/menu/my0;

    return-object v0
.end method

.method public static final synthetic n()Landroidx/appcompat/view/menu/db;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/w8;->a:Landroidx/appcompat/view/menu/db;

    return-object v0
.end method

.method public static final synthetic o()Landroidx/appcompat/view/menu/my0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/w8;->h:Landroidx/appcompat/view/menu/my0;

    return-object v0
.end method

.method public static final synthetic p()Landroidx/appcompat/view/menu/my0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/w8;->g:Landroidx/appcompat/view/menu/my0;

    return-object v0
.end method

.method public static final synthetic q()Landroidx/appcompat/view/menu/my0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/w8;->f:Landroidx/appcompat/view/menu/my0;

    return-object v0
.end method

.method public static final synthetic r()Landroidx/appcompat/view/menu/my0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/w8;->m:Landroidx/appcompat/view/menu/my0;

    return-object v0
.end method

.method public static final synthetic s()Landroidx/appcompat/view/menu/my0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/w8;->n:Landroidx/appcompat/view/menu/my0;

    return-object v0
.end method

.method public static final synthetic t(I)J
    .locals 2

    invoke-static {p0}, Landroidx/appcompat/view/menu/w8;->A(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic u(Landroidx/appcompat/view/menu/x9;Ljava/lang/Object;Landroidx/appcompat/view/menu/fw;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/w8;->B(Landroidx/appcompat/view/menu/x9;Ljava/lang/Object;Landroidx/appcompat/view/menu/fw;)Z

    move-result p0

    return p0
.end method

.method public static final v(JZ)J
    .locals 2

    if-eqz p2, :cond_0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static final w(JI)J
    .locals 2

    int-to-long v0, p2

    const/16 p2, 0x3c

    shl-long/2addr v0, p2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static final x(JLandroidx/appcompat/view/menu/db;)Landroidx/appcompat/view/menu/db;
    .locals 7

    new-instance v6, Landroidx/appcompat/view/menu/db;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/db;->u()Landroidx/appcompat/view/menu/v8;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    move-wide v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/db;-><init>(JLandroidx/appcompat/view/menu/db;Landroidx/appcompat/view/menu/v8;I)V

    return-object v6
.end method

.method public static final y()Landroidx/appcompat/view/menu/n70;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/w8$a;->v:Landroidx/appcompat/view/menu/w8$a;

    return-object v0
.end method

.method public static final z()Landroidx/appcompat/view/menu/my0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/w8;->l:Landroidx/appcompat/view/menu/my0;

    return-object v0
.end method
