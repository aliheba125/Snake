.class public final Landroidx/appcompat/view/menu/pt1;
.super Landroidx/appcompat/view/menu/dz1;
.source "SourceFile"


# instance fields
.field public c:C

.field public d:J

.field public e:Ljava/lang/String;

.field public final f:Landroidx/appcompat/view/menu/st1;

.field public final g:Landroidx/appcompat/view/menu/st1;

.field public final h:Landroidx/appcompat/view/menu/st1;

.field public final i:Landroidx/appcompat/view/menu/st1;

.field public final j:Landroidx/appcompat/view/menu/st1;

.field public final k:Landroidx/appcompat/view/menu/st1;

.field public final l:Landroidx/appcompat/view/menu/st1;

.field public final m:Landroidx/appcompat/view/menu/st1;

.field public final n:Landroidx/appcompat/view/menu/st1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/cx1;)V
    .locals 3

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/dz1;-><init>(Landroidx/appcompat/view/menu/cx1;)V

    const/4 p1, 0x0

    iput-char p1, p0, Landroidx/appcompat/view/menu/pt1;->c:C

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/appcompat/view/menu/pt1;->d:J

    new-instance v0, Landroidx/appcompat/view/menu/st1;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1, p1, p1}, Landroidx/appcompat/view/menu/st1;-><init>(Landroidx/appcompat/view/menu/pt1;IZZ)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/pt1;->f:Landroidx/appcompat/view/menu/st1;

    new-instance v0, Landroidx/appcompat/view/menu/st1;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/appcompat/view/menu/st1;-><init>(Landroidx/appcompat/view/menu/pt1;IZZ)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/pt1;->g:Landroidx/appcompat/view/menu/st1;

    new-instance v0, Landroidx/appcompat/view/menu/st1;

    invoke-direct {v0, p0, v1, p1, v2}, Landroidx/appcompat/view/menu/st1;-><init>(Landroidx/appcompat/view/menu/pt1;IZZ)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/pt1;->h:Landroidx/appcompat/view/menu/st1;

    new-instance v0, Landroidx/appcompat/view/menu/st1;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1, p1, p1}, Landroidx/appcompat/view/menu/st1;-><init>(Landroidx/appcompat/view/menu/pt1;IZZ)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/pt1;->i:Landroidx/appcompat/view/menu/st1;

    new-instance v0, Landroidx/appcompat/view/menu/st1;

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/appcompat/view/menu/st1;-><init>(Landroidx/appcompat/view/menu/pt1;IZZ)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/pt1;->j:Landroidx/appcompat/view/menu/st1;

    new-instance v0, Landroidx/appcompat/view/menu/st1;

    invoke-direct {v0, p0, v1, p1, v2}, Landroidx/appcompat/view/menu/st1;-><init>(Landroidx/appcompat/view/menu/pt1;IZZ)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/pt1;->k:Landroidx/appcompat/view/menu/st1;

    new-instance v0, Landroidx/appcompat/view/menu/st1;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1, p1}, Landroidx/appcompat/view/menu/st1;-><init>(Landroidx/appcompat/view/menu/pt1;IZZ)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/pt1;->l:Landroidx/appcompat/view/menu/st1;

    new-instance v0, Landroidx/appcompat/view/menu/st1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1, p1}, Landroidx/appcompat/view/menu/st1;-><init>(Landroidx/appcompat/view/menu/pt1;IZZ)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/pt1;->m:Landroidx/appcompat/view/menu/st1;

    new-instance v0, Landroidx/appcompat/view/menu/st1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1, p1}, Landroidx/appcompat/view/menu/st1;-><init>(Landroidx/appcompat/view/menu/pt1;IZZ)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/pt1;->n:Landroidx/appcompat/view/menu/st1;

    return-void
.end method

.method public static bridge synthetic A(Landroidx/appcompat/view/menu/pt1;C)V
    .locals 0

    iput-char p1, p0, Landroidx/appcompat/view/menu/pt1;->c:C

    return-void
.end method

.method public static bridge synthetic B(Landroidx/appcompat/view/menu/pt1;J)V
    .locals 0

    iput-wide p1, p0, Landroidx/appcompat/view/menu/pt1;->d:J

    return-void
.end method

.method public static bridge synthetic D(Landroidx/appcompat/view/menu/pt1;)J
    .locals 2

    iget-wide v0, p0, Landroidx/appcompat/view/menu/pt1;->d:J

    return-wide v0
.end method

.method public static E(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    invoke-static {}, Landroidx/appcompat/view/menu/hb2;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/appcompat/view/menu/si1;->H0:Landroidx/appcompat/view/menu/us1;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    return-object p0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic u(Landroidx/appcompat/view/menu/pt1;)C
    .locals 0

    iget-char p0, p0, Landroidx/appcompat/view/menu/pt1;->c:C

    return p0
.end method

.method public static v(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/yt1;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/yt1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static w(ZLjava/lang/Object;)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :cond_1
    instance-of v1, p1, Ljava/lang/Long;

    const-string v2, "-"

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    if-nez p0, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    move-object p0, p1

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x64

    cmp-long v1, v4, v6

    if-gez v1, :cond_3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x2d

    if-ne p1, v1, :cond_4

    move-object v0, v2

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-double v1, p1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-double p0, p0

    invoke-static {v3, v4, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_a

    check-cast p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class p0, Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/pt1;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    array-length v1, p1

    :goto_1
    if-ge v3, v1, :cond_9

    aget-object v2, p1, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-static {v4}, Landroidx/appcompat/view/menu/pt1;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    instance-of v0, p1, Landroidx/appcompat/view/menu/yt1;

    if-eqz v0, :cond_b

    check-cast p1, Landroidx/appcompat/view/menu/yt1;

    invoke-static {p1}, Landroidx/appcompat/view/menu/yt1;->a(Landroidx/appcompat/view/menu/yt1;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    if-eqz p0, :cond_c

    return-object v2

    :cond_c
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static x(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    invoke-static {p0, p2}, Landroidx/appcompat/view/menu/pt1;->w(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p3}, Landroidx/appcompat/view/menu/pt1;->w(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p4}, Landroidx/appcompat/view/menu/pt1;->w(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v1, ", "

    if-nez p1, :cond_2

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final C(I)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/pt1;->P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public final F()Landroidx/appcompat/view/menu/st1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pt1;->m:Landroidx/appcompat/view/menu/st1;

    return-object v0
.end method

.method public final G()Landroidx/appcompat/view/menu/st1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pt1;->f:Landroidx/appcompat/view/menu/st1;

    return-object v0
.end method

.method public final H()Landroidx/appcompat/view/menu/st1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pt1;->h:Landroidx/appcompat/view/menu/st1;

    return-object v0
.end method

.method public final I()Landroidx/appcompat/view/menu/st1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pt1;->g:Landroidx/appcompat/view/menu/st1;

    return-object v0
.end method

.method public final J()Landroidx/appcompat/view/menu/st1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pt1;->l:Landroidx/appcompat/view/menu/st1;

    return-object v0
.end method

.method public final K()Landroidx/appcompat/view/menu/st1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pt1;->n:Landroidx/appcompat/view/menu/st1;

    return-object v0
.end method

.method public final L()Landroidx/appcompat/view/menu/st1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pt1;->i:Landroidx/appcompat/view/menu/st1;

    return-object v0
.end method

.method public final M()Landroidx/appcompat/view/menu/st1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pt1;->k:Landroidx/appcompat/view/menu/st1;

    return-object v0
.end method

.method public final N()Landroidx/appcompat/view/menu/st1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pt1;->j:Landroidx/appcompat/view/menu/st1;

    return-object v0
.end method

.method public final O()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/view/menu/tu1;->d:Landroidx/appcompat/view/menu/bv1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/view/menu/tu1;->d:Landroidx/appcompat/view/menu/bv1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/bv1;->a()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v2, Landroidx/appcompat/view/menu/tu1;->z:Landroid/util/Pair;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public final P()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/pt1;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/fz1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->O()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/fz1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->O()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const-string v0, "FA"

    :goto_0
    iput-object v0, p0, Landroidx/appcompat/view/menu/pt1;->e:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/pt1;->e:Ljava/lang/String;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/appcompat/view/menu/pt1;->e:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final bridge synthetic a()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic b()Landroidx/appcompat/view/menu/cc;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic d()Landroidx/appcompat/view/menu/mf1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->d()Landroidx/appcompat/view/menu/mf1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e()Landroidx/appcompat/view/menu/qf1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Landroidx/appcompat/view/menu/ci1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->f()Landroidx/appcompat/view/menu/ci1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Landroidx/appcompat/view/menu/mt1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->g()Landroidx/appcompat/view/menu/mt1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()Landroidx/appcompat/view/menu/jw1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i()Landroidx/appcompat/view/menu/tu1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Landroidx/appcompat/view/menu/x92;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic k()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->k()V

    return-void
.end method

.method public final bridge synthetic l()Landroidx/appcompat/view/menu/pt1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->m()V

    return-void
.end method

.method public final bridge synthetic n()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    return-void
.end method

.method public final s()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final y(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/pt1;->P()Ljava/lang/String;

    return-void
.end method

.method public final z(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/pt1;->C(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {v0, p4, p5, p6, p7}, Landroidx/appcompat/view/menu/pt1;->x(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/pt1;->y(ILjava/lang/String;)V

    :cond_0
    if-nez p3, :cond_5

    const/4 p2, 0x5

    if-lt p1, p2, :cond_5

    invoke-static {p4}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Landroidx/appcompat/view/menu/fz1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/cx1;->G()Landroidx/appcompat/view/menu/jw1;

    move-result-object p2

    const/4 p3, 0x6

    if-nez p2, :cond_1

    const-string p1, "Scheduler not set. Not logging error/warn"

    invoke-virtual {p0, p3, p1}, Landroidx/appcompat/view/menu/pt1;->y(ILjava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/dz1;->r()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "Scheduler not initialized. Not logging error/warn"

    invoke-virtual {p0, p3, p1}, Landroidx/appcompat/view/menu/pt1;->y(ILjava/lang/String;)V

    return-void

    :cond_2
    if-gez p1, :cond_3

    move p1, v0

    :cond_3
    const/16 p3, 0x9

    if-lt p1, p3, :cond_4

    const/16 p1, 0x8

    :cond_4
    move v2, p1

    new-instance p1, Landroidx/appcompat/view/menu/ut1;

    move-object v0, p1

    move-object v1, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/ut1;-><init>(Landroidx/appcompat/view/menu/pt1;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/jw1;->D(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method
