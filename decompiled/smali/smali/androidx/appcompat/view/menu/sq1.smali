.class public final Landroidx/appcompat/view/menu/sq1;
.super Landroidx/appcompat/view/menu/q02;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/a42;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/sq1$a;
    }
.end annotation


# static fields
.field private static final zzc:Landroidx/appcompat/view/menu/sq1;

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

.field private zzh:Landroidx/appcompat/view/menu/qq1;

.field private zzi:Z

.field private zzj:Z

.field private zzk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/sq1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/sq1;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/sq1;->zzc:Landroidx/appcompat/view/menu/sq1;

    const-class v1, Landroidx/appcompat/view/menu/sq1;

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/q02;->t(Ljava/lang/Class;Landroidx/appcompat/view/menu/q02;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/q02;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroidx/appcompat/view/menu/sq1;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic G(Landroidx/appcompat/view/menu/sq1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/sq1;->H(Ljava/lang/String;)V

    return-void
.end method

.method private final H(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Landroidx/appcompat/view/menu/sq1;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/appcompat/view/menu/sq1;->zze:I

    iput-object p1, p0, Landroidx/appcompat/view/menu/sq1;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static J()Landroidx/appcompat/view/menu/sq1$a;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/sq1;->zzc:Landroidx/appcompat/view/menu/sq1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q02;->w()Landroidx/appcompat/view/menu/q02$b;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/sq1$a;

    return-object v0
.end method

.method public static synthetic K()Landroidx/appcompat/view/menu/sq1;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/sq1;->zzc:Landroidx/appcompat/view/menu/sq1;

    return-object v0
.end method


# virtual methods
.method public final I()Landroidx/appcompat/view/menu/qq1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/sq1;->zzh:Landroidx/appcompat/view/menu/qq1;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/qq1;->J()Landroidx/appcompat/view/menu/qq1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final L()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/sq1;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final M()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/sq1;->zzi:Z

    return v0
.end method

.method public final N()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/sq1;->zzj:Z

    return v0
.end method

.method public final O()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/sq1;->zzk:Z

    return v0
.end method

.method public final P()Z
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/sq1;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final Q()Z
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/sq1;->zze:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/sq1;->zzf:I

    return v0
.end method

.method public final q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

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
    sget-object p1, Landroidx/appcompat/view/menu/sq1;->zzd:Landroidx/appcompat/view/menu/t42;

    if-nez p1, :cond_1

    const-class p2, Landroidx/appcompat/view/menu/sq1;

    monitor-enter p2

    :try_start_0
    sget-object p1, Landroidx/appcompat/view/menu/sq1;->zzd:Landroidx/appcompat/view/menu/t42;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/appcompat/view/menu/q02$a;

    sget-object p3, Landroidx/appcompat/view/menu/sq1;->zzc:Landroidx/appcompat/view/menu/sq1;

    invoke-direct {p1, p3}, Landroidx/appcompat/view/menu/q02$a;-><init>(Landroidx/appcompat/view/menu/q02;)V

    sput-object p1, Landroidx/appcompat/view/menu/sq1;->zzd:Landroidx/appcompat/view/menu/t42;

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
    sget-object p1, Landroidx/appcompat/view/menu/sq1;->zzc:Landroidx/appcompat/view/menu/sq1;

    return-object p1

    :pswitch_4
    const-string v0, "zze"

    const-string v1, "zzf"

    const-string v2, "zzg"

    const-string v3, "zzh"

    const-string v4, "zzi"

    const-string v5, "zzj"

    const-string v6, "zzk"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1008\u0001\u0003\u1009\u0002\u0004\u1007\u0003\u0005\u1007\u0004\u0006\u1007\u0005"

    sget-object p3, Landroidx/appcompat/view/menu/sq1;->zzc:Landroidx/appcompat/view/menu/sq1;

    invoke-static {p3, p2, p1}, Landroidx/appcompat/view/menu/q02;->r(Landroidx/appcompat/view/menu/w32;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Landroidx/appcompat/view/menu/sq1$a;

    invoke-direct {p1, p2}, Landroidx/appcompat/view/menu/sq1$a;-><init>(Landroidx/appcompat/view/menu/nq1;)V

    return-object p1

    :pswitch_6
    new-instance p1, Landroidx/appcompat/view/menu/sq1;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/sq1;-><init>()V

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
