.class public Landroidx/appcompat/view/menu/er0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/gp;
.implements Landroidx/appcompat/view/menu/py0;
.implements Landroidx/appcompat/view/menu/xb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/er0$c;,
        Landroidx/appcompat/view/menu/er0$b;,
        Landroidx/appcompat/view/menu/er0$d;
    }
.end annotation


# static fields
.field public static final r:Landroidx/appcompat/view/menu/lo;


# instance fields
.field public final m:Landroidx/appcompat/view/menu/gs0;

.field public final n:Landroidx/appcompat/view/menu/ec;

.field public final o:Landroidx/appcompat/view/menu/ec;

.field public final p:Landroidx/appcompat/view/menu/hp;

.field public final q:Landroidx/appcompat/view/menu/dl0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "proto"

    invoke-static {v0}, Landroidx/appcompat/view/menu/lo;->b(Ljava/lang/String;)Landroidx/appcompat/view/menu/lo;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/er0;->r:Landroidx/appcompat/view/menu/lo;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/ec;Landroidx/appcompat/view/menu/ec;Landroidx/appcompat/view/menu/hp;Landroidx/appcompat/view/menu/gs0;Landroidx/appcompat/view/menu/dl0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Landroidx/appcompat/view/menu/er0;->m:Landroidx/appcompat/view/menu/gs0;

    iput-object p1, p0, Landroidx/appcompat/view/menu/er0;->n:Landroidx/appcompat/view/menu/ec;

    iput-object p2, p0, Landroidx/appcompat/view/menu/er0;->o:Landroidx/appcompat/view/menu/ec;

    iput-object p3, p0, Landroidx/appcompat/view/menu/er0;->p:Landroidx/appcompat/view/menu/hp;

    iput-object p5, p0, Landroidx/appcompat/view/menu/er0;->q:Landroidx/appcompat/view/menu/dl0;

    return-void
.end method

.method public static synthetic A(Landroidx/appcompat/view/menu/er0;Ljava/lang/String;Ljava/util/Map;Landroidx/appcompat/view/menu/zb$a;Landroid/database/sqlite/SQLiteDatabase;)Landroidx/appcompat/view/menu/zb;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/er0;->n0(Ljava/lang/String;Ljava/util/Map;Landroidx/appcompat/view/menu/zb$a;Landroid/database/sqlite/SQLiteDatabase;)Landroidx/appcompat/view/menu/zb;

    move-result-object p0

    return-object p0
.end method

.method public static A0(Ljava/lang/String;)[B
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B(Landroidx/appcompat/view/menu/er0;Ljava/util/List;Landroidx/appcompat/view/menu/d21;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/er0;->o0(Ljava/util/List;Landroidx/appcompat/view/menu/d21;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C(Landroidx/appcompat/view/menu/er0;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/er0;->x0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/er0;->h0(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E(Landroidx/appcompat/view/menu/er0;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/er0;->t0(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static E0(Ljava/lang/String;)Landroidx/appcompat/view/menu/lo;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Landroidx/appcompat/view/menu/er0;->r:Landroidx/appcompat/view/menu/lo;

    return-object p0

    :cond_0
    invoke-static {p0}, Landroidx/appcompat/view/menu/lo;->b(Ljava/lang/String;)Landroidx/appcompat/view/menu/lo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F(Landroidx/appcompat/view/menu/er0;Landroidx/appcompat/view/menu/ap;Landroidx/appcompat/view/menu/d21;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/er0;->q0(Landroidx/appcompat/view/menu/ap;Landroidx/appcompat/view/menu/d21;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static F0(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/yh0;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/yh0;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G(Ljava/util/Map;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/er0;->p0(Ljava/util/Map;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static G0(Landroid/database/Cursor;Landroidx/appcompat/view/menu/er0$b;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-interface {p1, p0}, Landroidx/appcompat/view/menu/er0$b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method public static synthetic H(Landroidx/appcompat/view/menu/er0;Ljava/util/Map;Landroidx/appcompat/view/menu/zb$a;Landroid/database/Cursor;)Landroidx/appcompat/view/menu/zb;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/er0;->m0(Ljava/util/Map;Landroidx/appcompat/view/menu/zb$a;Landroid/database/Cursor;)Landroidx/appcompat/view/menu/zb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I(Landroidx/appcompat/view/menu/er0;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/er0;->s0(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic J(Landroidx/appcompat/view/menu/er0;JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/er0;->a0(JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic K(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/er0;->j0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic L(Landroid/database/Cursor;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/er0;->u0(Landroid/database/Cursor;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic c0(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/oy0;

    const-string v1, "Timed out while trying to acquire the lock."

    invoke-direct {v0, v1, p0}, Landroidx/appcompat/view/menu/oy0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic d0(Ljava/lang/Throwable;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/oy0;

    const-string v1, "Timed out while trying to open db."

    invoke-direct {v0, v1, p0}, Landroidx/appcompat/view/menu/oy0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic e0(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 2

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f0(JLandroid/database/Cursor;)Landroidx/appcompat/view/menu/u01;
    .locals 2

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {}, Landroidx/appcompat/view/menu/u01;->c()Landroidx/appcompat/view/menu/u01$a;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/view/menu/u01$a;->c(J)Landroidx/appcompat/view/menu/u01$a;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Landroidx/appcompat/view/menu/u01$a;->b(J)Landroidx/appcompat/view/menu/u01$a;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/u01$a;->a()Landroidx/appcompat/view/menu/u01;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g0(JLandroid/database/sqlite/SQLiteDatabase;)Landroidx/appcompat/view/menu/u01;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1"

    invoke-virtual {p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    new-instance v0, Landroidx/appcompat/view/menu/vq0;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/vq0;-><init>(J)V

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/er0;->G0(Landroid/database/Cursor;Landroidx/appcompat/view/menu/er0$b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/u01;

    return-object p0
.end method

.method public static synthetic h(Ljava/lang/Throwable;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/er0;->d0(Ljava/lang/Throwable;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h0(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 2

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/er0;->c0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(JLandroid/database/Cursor;)Landroidx/appcompat/view/menu/u01;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/er0;->f0(JLandroid/database/Cursor;)Landroidx/appcompat/view/menu/u01;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id"

    invoke-virtual {p0, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    new-instance v0, Landroidx/appcompat/view/menu/br0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/br0;-><init>()V

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/er0;->G0(Landroid/database/Cursor;Landroidx/appcompat/view/menu/er0$b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static synthetic k0(Landroid/database/Cursor;)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/d21;->a()Landroidx/appcompat/view/menu/d21$a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/d21$a;->b(Ljava/lang/String;)Landroidx/appcompat/view/menu/d21$a;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Landroidx/appcompat/view/menu/vj0;->b(I)Landroidx/appcompat/view/menu/tj0;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/d21$a;->d(Landroidx/appcompat/view/menu/tj0;)Landroidx/appcompat/view/menu/d21$a;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/appcompat/view/menu/er0;->A0(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/d21$a;->c([B)Landroidx/appcompat/view/menu/d21$a;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/d21$a;->a()Landroidx/appcompat/view/menu/d21;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static synthetic m(Landroidx/appcompat/view/menu/er0;Landroidx/appcompat/view/menu/d21;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/er0;->l0(Landroidx/appcompat/view/menu/d21;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/er0;->b0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(JLandroidx/appcompat/view/menu/d21;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/er0;->w0(JLandroidx/appcompat/view/menu/d21;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p0(Ljava/util/Map;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 5

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v2, Landroidx/appcompat/view/menu/er0$c;

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Landroidx/appcompat/view/menu/er0$c;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/appcompat/view/menu/er0$a;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static synthetic r(Landroid/database/Cursor;)[B
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/er0;->r0(Landroid/database/Cursor;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r0(Landroid/database/Cursor;)[B
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    new-array p0, v2, [B

    move v2, v1

    move v3, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v5, v4

    invoke-static {v4, v1, p0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public static synthetic s(Landroid/database/Cursor;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/er0;->k0(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Ljava/lang/String;Landroidx/appcompat/view/menu/ga0$b;JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/er0;->v0(Ljava/lang/String;Landroidx/appcompat/view/menu/ga0$b;JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Landroidx/appcompat/view/menu/er0;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/er0;->Z(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u0(Landroid/database/Cursor;)Ljava/lang/Boolean;
    .locals 0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v0(Ljava/lang/String;Landroidx/appcompat/view/menu/ga0$b;JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ga0$b;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?"

    invoke-virtual {p4, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/lq0;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/lq0;-><init>()V

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/er0;->G0(Landroid/database/Cursor;Landroidx/appcompat/view/menu/er0$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "log_source"

    invoke-virtual {v0, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ga0$b;->c()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "reason"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "events_dropped_count"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p0, "log_event_dropped"

    invoke-virtual {p4, p0, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " WHERE log_source = ? AND reason = ?"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ga0$b;->c()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p2, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v1
.end method

.method public static synthetic w(Landroidx/appcompat/view/menu/er0;Landroidx/appcompat/view/menu/d21;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/er0;->i0(Landroidx/appcompat/view/menu/d21;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w0(JLandroidx/appcompat/view/menu/d21;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "next_request_ms"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/d21;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/d21;->d()Landroidx/appcompat/view/menu/tj0;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/vj0;->a(Landroidx/appcompat/view/menu/tj0;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    const-string p1, "transport_contexts"

    const-string v1, "backend_name = ? and priority = ?"

    invoke-virtual {p3, p1, v0, v1, p0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge p0, v1, :cond_0

    const-string p0, "backend_name"

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/d21;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/d21;->d()Landroidx/appcompat/view/menu/tj0;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/vj0;->a(Landroidx/appcompat/view/menu/tj0;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "priority"

    invoke-virtual {v0, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p3, p1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_0
    return-object v2
.end method

.method public static synthetic x(JLandroid/database/sqlite/SQLiteDatabase;)Landroidx/appcompat/view/menu/u01;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/er0;->g0(JLandroid/database/sqlite/SQLiteDatabase;)Landroidx/appcompat/view/menu/u01;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/er0;->e0(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final B0(Landroidx/appcompat/view/menu/zb$a;Ljava/util/Map;)V
    .locals 3

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {}, Landroidx/appcompat/view/menu/ja0;->c()Landroidx/appcompat/view/menu/ja0$a;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/ja0$a;->c(Ljava/lang/String;)Landroidx/appcompat/view/menu/ja0$a;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/ja0$a;->b(Ljava/util/List;)Landroidx/appcompat/view/menu/ja0$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ja0$a;->a()Landroidx/appcompat/view/menu/ja0;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/zb$a;->a(Landroidx/appcompat/view/menu/ja0;)Landroidx/appcompat/view/menu/zb$a;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final C0(J)[B
    .locals 8

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/er0;->Q()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "event_payloads"

    const-string v2, "bytes"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "event_id = ?"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "sequence_num"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance p2, Landroidx/appcompat/view/menu/qq0;

    invoke-direct {p2}, Landroidx/appcompat/view/menu/qq0;-><init>()V

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/er0;->G0(Landroid/database/Cursor;Landroidx/appcompat/view/menu/er0$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public final D0(Landroidx/appcompat/view/menu/er0$d;Landroidx/appcompat/view/menu/er0$b;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/view/menu/er0;->o:Landroidx/appcompat/view/menu/ec;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/ec;->a()J

    move-result-wide v0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroidx/appcompat/view/menu/er0$d;->a()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v2

    iget-object v3, p0, Landroidx/appcompat/view/menu/er0;->o:Landroidx/appcompat/view/menu/ec;

    invoke-interface {v3}, Landroidx/appcompat/view/menu/ec;->a()J

    move-result-wide v3

    iget-object v5, p0, Landroidx/appcompat/view/menu/er0;->p:Landroidx/appcompat/view/menu/hp;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/hp;->b()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v5, v0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    invoke-interface {p2, v2}, Landroidx/appcompat/view/menu/er0$b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method

.method public final M(I)Landroidx/appcompat/view/menu/ga0$b;
    .locals 3

    sget-object v0, Landroidx/appcompat/view/menu/ga0$b;->n:Landroidx/appcompat/view/menu/ga0$b;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ga0$b;->c()I

    move-result v1

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Landroidx/appcompat/view/menu/ga0$b;->o:Landroidx/appcompat/view/menu/ga0$b;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ga0$b;->c()I

    move-result v2

    if-ne p1, v2, :cond_1

    return-object v1

    :cond_1
    sget-object v1, Landroidx/appcompat/view/menu/ga0$b;->p:Landroidx/appcompat/view/menu/ga0$b;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ga0$b;->c()I

    move-result v2

    if-ne p1, v2, :cond_2

    return-object v1

    :cond_2
    sget-object v1, Landroidx/appcompat/view/menu/ga0$b;->q:Landroidx/appcompat/view/menu/ga0$b;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ga0$b;->c()I

    move-result v2

    if-ne p1, v2, :cond_3

    return-object v1

    :cond_3
    sget-object v1, Landroidx/appcompat/view/menu/ga0$b;->r:Landroidx/appcompat/view/menu/ga0$b;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ga0$b;->c()I

    move-result v2

    if-ne p1, v2, :cond_4

    return-object v1

    :cond_4
    sget-object v1, Landroidx/appcompat/view/menu/ga0$b;->s:Landroidx/appcompat/view/menu/ga0$b;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ga0$b;->c()I

    move-result v2

    if-ne p1, v2, :cond_5

    return-object v1

    :cond_5
    sget-object v1, Landroidx/appcompat/view/menu/ga0$b;->t:Landroidx/appcompat/view/menu/ga0$b;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ga0$b;->c()I

    move-result v2

    if-ne p1, v2, :cond_6

    return-object v1

    :cond_6
    const-string v1, "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "SQLiteEventStore"

    invoke-static {v2, v1, p1}, Landroidx/appcompat/view/menu/ma0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final N(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/yq0;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/yq0;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    new-instance p1, Landroidx/appcompat/view/menu/zq0;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/zq0;-><init>()V

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/view/menu/er0;->D0(Landroidx/appcompat/view/menu/er0$d;Landroidx/appcompat/view/menu/er0$b;)Ljava/lang/Object;

    return-void
.end method

.method public final O(Landroid/database/sqlite/SQLiteDatabase;Landroidx/appcompat/view/menu/d21;)J
    .locals 4

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/er0;->V(Landroid/database/sqlite/SQLiteDatabase;Landroidx/appcompat/view/menu/d21;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/d21;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "backend_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/d21;->d()Landroidx/appcompat/view/menu/tj0;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/vj0;->a(Landroidx/appcompat/view/menu/tj0;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "priority"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "next_request_ms"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/d21;->c()[B

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/d21;->c()[B

    move-result-object p2

    invoke-static {p2, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    const-string v1, "extras"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p2, "transport_contexts"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public P()J
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/er0;->S()J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/er0;->T()J

    move-result-wide v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public Q()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/er0;->m:Landroidx/appcompat/view/menu/gs0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/appcompat/view/menu/oq0;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/oq0;-><init>(Landroidx/appcompat/view/menu/gs0;)V

    new-instance v0, Landroidx/appcompat/view/menu/wq0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/wq0;-><init>()V

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/er0;->D0(Landroidx/appcompat/view/menu/er0$d;Landroidx/appcompat/view/menu/er0$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public final R()Landroidx/appcompat/view/menu/ox;
    .locals 4

    invoke-static {}, Landroidx/appcompat/view/menu/ox;->b()Landroidx/appcompat/view/menu/ox$a;

    move-result-object v0

    invoke-static {}, Landroidx/appcompat/view/menu/ex0;->c()Landroidx/appcompat/view/menu/ex0$a;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/er0;->P()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/view/menu/ex0$a;->b(J)Landroidx/appcompat/view/menu/ex0$a;

    move-result-object v1

    sget-object v2, Landroidx/appcompat/view/menu/hp;->a:Landroidx/appcompat/view/menu/hp;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/hp;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/view/menu/ex0$a;->c(J)Landroidx/appcompat/view/menu/ex0$a;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ex0$a;->a()Landroidx/appcompat/view/menu/ex0;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/ox$a;->b(Landroidx/appcompat/view/menu/ex0;)Landroidx/appcompat/view/menu/ox$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ox$a;->a()Landroidx/appcompat/view/menu/ox;

    move-result-object v0

    return-object v0
.end method

.method public final S()J
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/er0;->Q()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "PRAGMA page_count"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final T()J
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/er0;->Q()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "PRAGMA page_size"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final U()Landroidx/appcompat/view/menu/u01;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/er0;->n:Landroidx/appcompat/view/menu/ec;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/ec;->a()J

    move-result-wide v0

    new-instance v2, Landroidx/appcompat/view/menu/uq0;

    invoke-direct {v2, v0, v1}, Landroidx/appcompat/view/menu/uq0;-><init>(J)V

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/er0;->W(Landroidx/appcompat/view/menu/er0$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/u01;

    return-object v0
.end method

.method public final V(Landroid/database/sqlite/SQLiteDatabase;Landroidx/appcompat/view/menu/d21;)Ljava/lang/Long;
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "backend_name = ? and priority = ?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/d21;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/d21;->d()Landroidx/appcompat/view/menu/tj0;

    move-result-object v3

    invoke-static {v3}, Landroidx/appcompat/view/menu/vj0;->a(Landroidx/appcompat/view/menu/tj0;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/d21;->c()[B

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v2, " and extras = ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/d21;->c()[B

    move-result-object p2

    invoke-static {p2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p2, " and extras is null"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v5, "transport_contexts"

    const-string p2, "_id"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array p2, v3, [Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    move-object v8, p2

    check-cast v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance p2, Landroidx/appcompat/view/menu/tq0;

    invoke-direct {p2}, Landroidx/appcompat/view/menu/tq0;-><init>()V

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/er0;->G0(Landroid/database/Cursor;Landroidx/appcompat/view/menu/er0$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method public W(Landroidx/appcompat/view/menu/er0$b;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/er0;->Q()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {p1, v0}, Landroidx/appcompat/view/menu/er0$b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method public final X()Z
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/er0;->S()J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/er0;->T()J

    move-result-wide v2

    mul-long/2addr v0, v2

    iget-object v2, p0, Landroidx/appcompat/view/menu/er0;->p:Landroidx/appcompat/view/menu/hp;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/hp;->f()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final Y(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 6

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/yh0;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/yh0;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/yh0;->b()Landroidx/appcompat/view/menu/ap;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ap;->l()Landroidx/appcompat/view/menu/ap$a;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/yh0;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/er0$c;

    iget-object v5, v4, Landroidx/appcompat/view/menu/er0$c;->a:Ljava/lang/String;

    iget-object v4, v4, Landroidx/appcompat/view/menu/er0$c;->b:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Landroidx/appcompat/view/menu/ap$a;->c(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/view/menu/ap$a;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/yh0;->c()J

    move-result-wide v3

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/yh0;->d()Landroidx/appcompat/view/menu/d21;

    move-result-object v1

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ap$a;->d()Landroidx/appcompat/view/menu/ap;

    move-result-object v2

    invoke-static {v3, v4, v1, v2}, Landroidx/appcompat/view/menu/yh0;->a(JLandroidx/appcompat/view/menu/d21;Landroidx/appcompat/view/menu/ap;)Landroidx/appcompat/view/menu/yh0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public final synthetic Z(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 4

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    int-to-long v2, v0

    sget-object v0, Landroidx/appcompat/view/menu/ga0$b;->o:Landroidx/appcompat/view/menu/ga0$b;

    invoke-virtual {p0, v2, v3, v0, v1}, Landroidx/appcompat/view/menu/er0;->a(JLandroidx/appcompat/view/menu/ga0$b;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(JLandroidx/appcompat/view/menu/ga0$b;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/dr0;

    invoke-direct {v0, p4, p3, p1, p2}, Landroidx/appcompat/view/menu/dr0;-><init>(Ljava/lang/String;Landroidx/appcompat/view/menu/ga0$b;J)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/er0;->W(Landroidx/appcompat/view/menu/er0$b;)Ljava/lang/Object;

    return-void
.end method

.method public final synthetic a0(JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string p2, "SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name"

    invoke-virtual {p3, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    new-instance v0, Landroidx/appcompat/view/menu/iq0;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/iq0;-><init>(Landroidx/appcompat/view/menu/er0;)V

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/er0;->G0(Landroid/database/Cursor;Landroidx/appcompat/view/menu/er0$b;)Ljava/lang/Object;

    const-string p2, "events"

    const-string v0, "timestamp_ms < ?"

    invoke-virtual {p3, p2, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/er0;->n:Landroidx/appcompat/view/menu/ec;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/ec;->a()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/appcompat/view/menu/er0;->p:Landroidx/appcompat/view/menu/hp;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/hp;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    new-instance v2, Landroidx/appcompat/view/menu/ar0;

    invoke-direct {v2, p0, v0, v1}, Landroidx/appcompat/view/menu/ar0;-><init>(Landroidx/appcompat/view/menu/er0;J)V

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/er0;->W(Landroidx/appcompat/view/menu/er0$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public c()Landroidx/appcompat/view/menu/zb;
    .locals 4

    invoke-static {}, Landroidx/appcompat/view/menu/zb;->e()Landroidx/appcompat/view/menu/zb$a;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Landroidx/appcompat/view/menu/kq0;

    const-string v3, "SELECT log_source, reason, events_dropped_count FROM log_event_dropped"

    invoke-direct {v2, p0, v3, v1, v0}, Landroidx/appcompat/view/menu/kq0;-><init>(Landroidx/appcompat/view/menu/er0;Ljava/lang/String;Ljava/util/Map;Landroidx/appcompat/view/menu/zb$a;)V

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/er0;->W(Landroidx/appcompat/view/menu/er0$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/zb;

    return-object v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/er0;->m:Landroidx/appcompat/view/menu/gs0;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method

.method public d(Landroidx/appcompat/view/menu/py0$a;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/er0;->Q()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/er0;->N(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    invoke-interface {p1}, Landroidx/appcompat/view/menu/py0$a;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method public e()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/fq0;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/fq0;-><init>(Landroidx/appcompat/view/menu/er0;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/er0;->W(Landroidx/appcompat/view/menu/er0$b;)Ljava/lang/Object;

    return-void
.end method

.method public f(Ljava/lang/Iterable;)V
    .locals 2

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM events WHERE _id in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroidx/appcompat/view/menu/er0;->F0(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/er0;->Q()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    return-void
.end method

.method public g(Landroidx/appcompat/view/menu/d21;)J
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/er0;->Q()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/d21;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/d21;->d()Landroidx/appcompat/view/menu/tj0;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/vj0;->a(Landroidx/appcompat/view/menu/tj0;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v1, "SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?"

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance v0, Landroidx/appcompat/view/menu/xq0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/xq0;-><init>()V

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/er0;->G0(Landroid/database/Cursor;Landroidx/appcompat/view/menu/er0$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic i0(Landroidx/appcompat/view/menu/d21;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0, p2, p1}, Landroidx/appcompat/view/menu/er0;->V(Landroid/database/sqlite/SQLiteDatabase;Landroidx/appcompat/view/menu/d21;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/er0;->Q()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "SELECT 1 FROM events WHERE context_id = ? LIMIT 1"

    invoke-virtual {p2, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance p2, Landroidx/appcompat/view/menu/pq0;

    invoke-direct {p2}, Landroidx/appcompat/view/menu/pq0;-><init>()V

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/er0;->G0(Landroid/database/Cursor;Landroidx/appcompat/view/menu/er0$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public k(Landroidx/appcompat/view/menu/d21;Landroidx/appcompat/view/menu/ap;)Landroidx/appcompat/view/menu/yh0;
    .locals 4

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/d21;->d()Landroidx/appcompat/view/menu/tj0;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/ap;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/d21;->b()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "SQLiteEventStore"

    const-string v2, "Storing event with priority=%s, name=%s for destination %s"

    invoke-static {v1, v2, v0}, Landroidx/appcompat/view/menu/ma0;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroidx/appcompat/view/menu/sq0;

    invoke-direct {v0, p0, p2, p1}, Landroidx/appcompat/view/menu/sq0;-><init>(Landroidx/appcompat/view/menu/er0;Landroidx/appcompat/view/menu/ap;Landroidx/appcompat/view/menu/d21;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/er0;->W(Landroidx/appcompat/view/menu/er0$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {v0, v1, p1, p2}, Landroidx/appcompat/view/menu/yh0;->a(JLandroidx/appcompat/view/menu/d21;Landroidx/appcompat/view/menu/ap;)Landroidx/appcompat/view/menu/yh0;

    move-result-object p1

    return-object p1
.end method

.method public l(Landroidx/appcompat/view/menu/d21;)Ljava/lang/Iterable;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/gq0;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/gq0;-><init>(Landroidx/appcompat/view/menu/er0;Landroidx/appcompat/view/menu/d21;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/er0;->W(Landroidx/appcompat/view/menu/er0$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    return-object p1
.end method

.method public final synthetic l0(Landroidx/appcompat/view/menu/d21;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/view/menu/er0;->p:Landroidx/appcompat/view/menu/hp;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/hp;->d()I

    move-result v0

    invoke-virtual {p0, p2, p1, v0}, Landroidx/appcompat/view/menu/er0;->y0(Landroid/database/sqlite/SQLiteDatabase;Landroidx/appcompat/view/menu/d21;I)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Landroidx/appcompat/view/menu/tj0;->values()[Landroidx/appcompat/view/menu/tj0;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/d21;->d()Landroidx/appcompat/view/menu/tj0;

    move-result-object v5

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, p0, Landroidx/appcompat/view/menu/er0;->p:Landroidx/appcompat/view/menu/hp;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/hp;->d()I

    move-result v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v5, v6

    if-gtz v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1, v4}, Landroidx/appcompat/view/menu/d21;->f(Landroidx/appcompat/view/menu/tj0;)Landroidx/appcompat/view/menu/d21;

    move-result-object v4

    invoke-virtual {p0, p2, v4, v5}, Landroidx/appcompat/view/menu/er0;->y0(Landroid/database/sqlite/SQLiteDatabase;Landroidx/appcompat/view/menu/d21;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    invoke-virtual {p0, p2, v0}, Landroidx/appcompat/view/menu/er0;->z0(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/view/menu/er0;->Y(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic m0(Ljava/util/Map;Landroidx/appcompat/view/menu/zb$a;Landroid/database/Cursor;)Landroidx/appcompat/view/menu/zb;
    .locals 5

    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/er0;->M(I)Landroidx/appcompat/view/menu/ga0$b;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {}, Landroidx/appcompat/view/menu/ga0;->c()Landroidx/appcompat/view/menu/ga0$a;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/appcompat/view/menu/ga0$a;->c(Landroidx/appcompat/view/menu/ga0$b;)Landroidx/appcompat/view/menu/ga0$a;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/view/menu/ga0$a;->b(J)Landroidx/appcompat/view/menu/ga0$a;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ga0$a;->a()Landroidx/appcompat/view/menu/ga0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2, p1}, Landroidx/appcompat/view/menu/er0;->B0(Landroidx/appcompat/view/menu/zb$a;Ljava/util/Map;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/er0;->U()Landroidx/appcompat/view/menu/u01;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/zb$a;->e(Landroidx/appcompat/view/menu/u01;)Landroidx/appcompat/view/menu/zb$a;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/er0;->R()Landroidx/appcompat/view/menu/ox;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/zb$a;->d(Landroidx/appcompat/view/menu/ox;)Landroidx/appcompat/view/menu/zb$a;

    iget-object p1, p0, Landroidx/appcompat/view/menu/er0;->q:Landroidx/appcompat/view/menu/dl0;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/dl0;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/zb$a;->c(Ljava/lang/String;)Landroidx/appcompat/view/menu/zb$a;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/zb$a;->b()Landroidx/appcompat/view/menu/zb;

    move-result-object p1

    return-object p1
.end method

.method public n(Landroidx/appcompat/view/menu/d21;J)V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/eq0;

    invoke-direct {v0, p2, p3, p1}, Landroidx/appcompat/view/menu/eq0;-><init>(JLandroidx/appcompat/view/menu/d21;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/er0;->W(Landroidx/appcompat/view/menu/er0$b;)Ljava/lang/Object;

    return-void
.end method

.method public final synthetic n0(Ljava/lang/String;Ljava/util/Map;Landroidx/appcompat/view/menu/zb$a;Landroid/database/sqlite/SQLiteDatabase;)Landroidx/appcompat/view/menu/zb;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p4, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance p4, Landroidx/appcompat/view/menu/rq0;

    invoke-direct {p4, p0, p2, p3}, Landroidx/appcompat/view/menu/rq0;-><init>(Landroidx/appcompat/view/menu/er0;Ljava/util/Map;Landroidx/appcompat/view/menu/zb$a;)V

    invoke-static {p1, p4}, Landroidx/appcompat/view/menu/er0;->G0(Landroid/database/Cursor;Landroidx/appcompat/view/menu/er0$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/zb;

    return-object p1
.end method

.method public final synthetic o0(Ljava/util/List;Landroidx/appcompat/view/menu/d21;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 6

    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x7

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v0, v4

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/ap;->a()Landroidx/appcompat/view/menu/ap$a;

    move-result-object v3

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/ap$a;->j(Ljava/lang/String;)Landroidx/appcompat/view/menu/ap$a;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/view/menu/ap$a;->i(J)Landroidx/appcompat/view/menu/ap$a;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/view/menu/ap$a;->k(J)Landroidx/appcompat/view/menu/ap$a;

    move-result-object v3

    const/4 v4, 0x4

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/appcompat/view/menu/jo;

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/appcompat/view/menu/er0;->E0(Ljava/lang/String;)Landroidx/appcompat/view/menu/lo;

    move-result-object v4

    const/4 v5, 0x5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroidx/appcompat/view/menu/jo;-><init>(Landroidx/appcompat/view/menu/lo;[B)V

    invoke-virtual {v3, v0}, Landroidx/appcompat/view/menu/ap$a;->h(Landroidx/appcompat/view/menu/jo;)Landroidx/appcompat/view/menu/ap$a;

    goto :goto_1

    :cond_1
    new-instance v0, Landroidx/appcompat/view/menu/jo;

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/appcompat/view/menu/er0;->E0(Ljava/lang/String;)Landroidx/appcompat/view/menu/lo;

    move-result-object v4

    invoke-virtual {p0, v1, v2}, Landroidx/appcompat/view/menu/er0;->C0(J)[B

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroidx/appcompat/view/menu/jo;-><init>(Landroidx/appcompat/view/menu/lo;[B)V

    invoke-virtual {v3, v0}, Landroidx/appcompat/view/menu/ap$a;->h(Landroidx/appcompat/view/menu/jo;)Landroidx/appcompat/view/menu/ap$a;

    :goto_1
    const/4 v0, 0x6

    invoke-interface {p3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/appcompat/view/menu/ap$a;->g(Ljava/lang/Integer;)Landroidx/appcompat/view/menu/ap$a;

    :cond_2
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/ap$a;->d()Landroidx/appcompat/view/menu/ap;

    move-result-object v0

    invoke-static {v1, v2, p2, v0}, Landroidx/appcompat/view/menu/yh0;->a(JLandroidx/appcompat/view/menu/d21;Landroidx/appcompat/view/menu/ap;)Landroidx/appcompat/view/menu/yh0;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public q()Ljava/lang/Iterable;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/dq0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/dq0;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/er0;->W(Landroidx/appcompat/view/menu/er0$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method public final synthetic q0(Landroidx/appcompat/view/menu/ap;Landroidx/appcompat/view/menu/d21;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;
    .locals 11

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/er0;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Landroidx/appcompat/view/menu/ga0$b;->p:Landroidx/appcompat/view/menu/ga0$b;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ap;->j()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1, p2, p1}, Landroidx/appcompat/view/menu/er0;->a(JLandroidx/appcompat/view/menu/ga0$b;Ljava/lang/String;)V

    const-wide/16 p1, -0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p3, p2}, Landroidx/appcompat/view/menu/er0;->O(Landroid/database/sqlite/SQLiteDatabase;Landroidx/appcompat/view/menu/d21;)J

    move-result-wide v0

    iget-object p2, p0, Landroidx/appcompat/view/menu/er0;->p:Landroidx/appcompat/view/menu/hp;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/hp;->e()I

    move-result p2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ap;->e()Landroidx/appcompat/view/menu/jo;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/jo;->a()[B

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v3, p2, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "context_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "transport_name"

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ap;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ap;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "timestamp_ms"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ap;->k()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "uptime_ms"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ap;->e()Landroidx/appcompat/view/menu/jo;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/jo;->b()Landroidx/appcompat/view/menu/lo;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/lo;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "payload_encoding"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ap;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "num_attempts"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "inline"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz v3, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_2
    new-array v0, v4, [B

    :goto_1
    const-string v1, "payload"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v0, "events"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-string v0, "event_id"

    if-nez v3, :cond_3

    array-length v3, v2

    int-to-double v3, v3

    int-to-double v8, p2

    div-double/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    :goto_2
    if-gt v5, v3, :cond_3

    add-int/lit8 v4, v5, -0x1

    mul-int/2addr v4, p2

    mul-int v8, v5, p2

    array-length v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v2, v4, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "sequence_num"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "bytes"

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v4, "event_payloads"

    invoke-virtual {p3, v4, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ap;->i()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "name"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v3, "value"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "event_metadata"

    invoke-virtual {p3, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_3

    :cond_4
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic s0(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 4

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    int-to-long v2, v0

    sget-object v0, Landroidx/appcompat/view/menu/ga0$b;->r:Landroidx/appcompat/view/menu/ga0$b;

    invoke-virtual {p0, v2, v3, v0, v1}, Landroidx/appcompat/view/menu/er0;->a(JLandroidx/appcompat/view/menu/ga0$b;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic t0(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p3, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    const/4 p1, 0x0

    invoke-virtual {p3, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    new-instance v0, Landroidx/appcompat/view/menu/mq0;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/mq0;-><init>(Landroidx/appcompat/view/menu/er0;)V

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/er0;->G0(Landroid/database/Cursor;Landroidx/appcompat/view/menu/er0$b;)Ljava/lang/Object;

    const-string p2, "DELETE FROM events WHERE num_attempts >= 16"

    invoke-virtual {p3, p2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p2

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    return-object p1
.end method

.method public v(Landroidx/appcompat/view/menu/d21;)Z
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/cr0;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/cr0;-><init>(Landroidx/appcompat/view/menu/er0;Landroidx/appcompat/view/menu/d21;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/er0;->W(Landroidx/appcompat/view/menu/er0$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final synthetic x0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 3

    const-string v0, "DELETE FROM log_event_dropped"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE global_log_event_state SET last_metrics_upload_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/er0;->n:Landroidx/appcompat/view/menu/ec;

    invoke-interface {v1}, Landroidx/appcompat/view/menu/ec;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public y(Ljava/lang/Iterable;)V
    .locals 2

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroidx/appcompat/view/menu/er0;->F0(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroidx/appcompat/view/menu/hq0;

    const-string v1, "SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name"

    invoke-direct {v0, p0, p1, v1}, Landroidx/appcompat/view/menu/hq0;-><init>(Landroidx/appcompat/view/menu/er0;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/er0;->W(Landroidx/appcompat/view/menu/er0$b;)Ljava/lang/Object;

    return-void
.end method

.method public final y0(Landroid/database/sqlite/SQLiteDatabase;Landroidx/appcompat/view/menu/d21;I)Ljava/util/List;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/er0;->V(Landroid/database/sqlite/SQLiteDatabase;Landroidx/appcompat/view/menu/d21;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v3, "events"

    const-string v4, "_id"

    const-string v5, "transport_name"

    const-string v6, "timestamp_ms"

    const-string v7, "uptime_ms"

    const-string v8, "payload_encoding"

    const-string v9, "payload"

    const-string v10, "code"

    const-string v11, "inline"

    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "context_id = ?"

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    move-object v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance p3, Landroidx/appcompat/view/menu/nq0;

    invoke-direct {p3, p0, v0, p2}, Landroidx/appcompat/view/menu/nq0;-><init>(Landroidx/appcompat/view/menu/er0;Ljava/util/List;Landroidx/appcompat/view/menu/d21;)V

    invoke-static {p1, p3}, Landroidx/appcompat/view/menu/er0;->G0(Landroid/database/Cursor;Landroidx/appcompat/view/menu/er0$b;)Ljava/lang/Object;

    return-object v0
.end method

.method public final z0(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/Map;
    .locals 10

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event_id IN ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/yh0;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/yh0;->c()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 p2, 0x29

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "event_metadata"

    const-string p2, "name"

    const-string v2, "value"

    const-string v4, "event_id"

    filled-new-array {v4, p2, v2}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance p2, Landroidx/appcompat/view/menu/jq0;

    invoke-direct {p2, v0}, Landroidx/appcompat/view/menu/jq0;-><init>(Ljava/util/Map;)V

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/er0;->G0(Landroid/database/Cursor;Landroidx/appcompat/view/menu/er0$b;)Ljava/lang/Object;

    return-object v0
.end method
