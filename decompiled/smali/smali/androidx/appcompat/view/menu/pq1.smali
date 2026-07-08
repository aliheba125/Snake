.class public final Landroidx/appcompat/view/menu/pq1;
.super Landroidx/appcompat/view/menu/q02;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/a42;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/pq1$a;
    }
.end annotation


# static fields
.field private static final zzc:Landroidx/appcompat/view/menu/pq1;

.field private static volatile zzd:Landroidx/appcompat/view/menu/t42;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/appcompat/view/menu/t42;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Ljava/lang/String;

.field private zzh:Landroidx/appcompat/view/menu/n12;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/appcompat/view/menu/n12;"
        }
    .end annotation
.end field

.field private zzi:Z

.field private zzj:Landroidx/appcompat/view/menu/rq1;

.field private zzk:Z

.field private zzl:Z

.field private zzm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/pq1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/pq1;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/pq1;->zzc:Landroidx/appcompat/view/menu/pq1;

    const-class v1, Landroidx/appcompat/view/menu/pq1;

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/q02;->t(Ljava/lang/Class;Landroidx/appcompat/view/menu/q02;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/q02;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroidx/appcompat/view/menu/pq1;->zzg:Ljava/lang/String;

    invoke-static {}, Landroidx/appcompat/view/menu/q02;->B()Landroidx/appcompat/view/menu/n12;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/pq1;->zzh:Landroidx/appcompat/view/menu/n12;

    return-void
.end method

.method public static synthetic I(Landroidx/appcompat/view/menu/pq1;ILandroidx/appcompat/view/menu/qq1;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/pq1;->H(ILandroidx/appcompat/view/menu/qq1;)V

    return-void
.end method

.method public static synthetic J(Landroidx/appcompat/view/menu/pq1;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/pq1;->K(Ljava/lang/String;)V

    return-void
.end method

.method public static M()Landroidx/appcompat/view/menu/pq1$a;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/pq1;->zzc:Landroidx/appcompat/view/menu/pq1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q02;->w()Landroidx/appcompat/view/menu/q02$b;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/pq1$a;

    return-object v0
.end method

.method public static synthetic N()Landroidx/appcompat/view/menu/pq1;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/pq1;->zzc:Landroidx/appcompat/view/menu/pq1;

    return-object v0
.end method


# virtual methods
.method public final G(I)Landroidx/appcompat/view/menu/qq1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pq1;->zzh:Landroidx/appcompat/view/menu/n12;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/qq1;

    return-object p1
.end method

.method public final H(ILandroidx/appcompat/view/menu/qq1;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/appcompat/view/menu/pq1;->zzh:Landroidx/appcompat/view/menu/n12;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/n12;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroidx/appcompat/view/menu/q02;->o(Landroidx/appcompat/view/menu/n12;)Landroidx/appcompat/view/menu/n12;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/pq1;->zzh:Landroidx/appcompat/view/menu/n12;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/pq1;->zzh:Landroidx/appcompat/view/menu/n12;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final K(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Landroidx/appcompat/view/menu/pq1;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/appcompat/view/menu/pq1;->zze:I

    iput-object p1, p0, Landroidx/appcompat/view/menu/pq1;->zzg:Ljava/lang/String;

    return-void
.end method

.method public final L()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/pq1;->zzf:I

    return v0
.end method

.method public final O()Landroidx/appcompat/view/menu/rq1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pq1;->zzj:Landroidx/appcompat/view/menu/rq1;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/rq1;->I()Landroidx/appcompat/view/menu/rq1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final P()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pq1;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final Q()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pq1;->zzh:Landroidx/appcompat/view/menu/n12;

    return-object v0
.end method

.method public final R()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/pq1;->zzk:Z

    return v0
.end method

.method public final S()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/pq1;->zzl:Z

    return v0
.end method

.method public final T()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/pq1;->zzm:Z

    return v0
.end method

.method public final U()Z
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/pq1;->zze:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final V()Z
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/pq1;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final W()Z
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/pq1;->zze:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pq1;->zzh:Landroidx/appcompat/view/menu/n12;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object p2, Landroidx/appcompat/view/menu/nq1;->a:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Landroidx/appcompat/view/menu/pq1;->zzd:Landroidx/appcompat/view/menu/t42;

    if-nez p1, :cond_1

    const-class p2, Landroidx/appcompat/view/menu/pq1;

    monitor-enter p2

    :try_start_0
    sget-object p1, Landroidx/appcompat/view/menu/pq1;->zzd:Landroidx/appcompat/view/menu/t42;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/appcompat/view/menu/q02$a;

    sget-object p3, Landroidx/appcompat/view/menu/pq1;->zzc:Landroidx/appcompat/view/menu/pq1;

    invoke-direct {p1, p3}, Landroidx/appcompat/view/menu/q02$a;-><init>(Landroidx/appcompat/view/menu/q02;)V

    sput-object p1, Landroidx/appcompat/view/menu/pq1;->zzd:Landroidx/appcompat/view/menu/t42;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p2

    goto :goto_2

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    return-object p1

    :pswitch_3
    sget-object p1, Landroidx/appcompat/view/menu/pq1;->zzc:Landroidx/appcompat/view/menu/pq1;

    return-object p1

    :pswitch_4
    const-string v0, "zze"

    const-string v1, "zzf"

    const-string v2, "zzg"

    const-string v3, "zzh"

    const-class v4, Landroidx/appcompat/view/menu/qq1;

    const-string v5, "zzi"

    const-string v6, "zzj"

    const-string v7, "zzk"

    const-string v8, "zzl"

    const-string v9, "zzm"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u1008\u0001\u0003\u001b\u0004\u1007\u0002\u0005\u1009\u0003\u0006\u1007\u0004\u0007\u1007\u0005\u0008\u1007\u0006"

    sget-object p3, Landroidx/appcompat/view/menu/pq1;->zzc:Landroidx/appcompat/view/menu/pq1;

    invoke-static {p3, p2, p1}, Landroidx/appcompat/view/menu/q02;->r(Landroidx/appcompat/view/menu/w32;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Landroidx/appcompat/view/menu/pq1$a;

    invoke-direct {p1, p2}, Landroidx/appcompat/view/menu/pq1$a;-><init>(Landroidx/appcompat/view/menu/nq1;)V

    return-object p1

    :pswitch_6
    new-instance p1, Landroidx/appcompat/view/menu/pq1;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/pq1;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
