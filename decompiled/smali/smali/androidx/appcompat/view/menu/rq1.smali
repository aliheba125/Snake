.class public final Landroidx/appcompat/view/menu/rq1;
.super Landroidx/appcompat/view/menu/q02;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/a42;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/rq1$b;,
        Landroidx/appcompat/view/menu/rq1$a;
    }
.end annotation


# static fields
.field private static final zzc:Landroidx/appcompat/view/menu/rq1;

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

.field private zzg:Z

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/rq1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/rq1;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/rq1;->zzc:Landroidx/appcompat/view/menu/rq1;

    const-class v1, Landroidx/appcompat/view/menu/rq1;

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/q02;->t(Ljava/lang/Class;Landroidx/appcompat/view/menu/q02;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/q02;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroidx/appcompat/view/menu/rq1;->zzh:Ljava/lang/String;

    iput-object v0, p0, Landroidx/appcompat/view/menu/rq1;->zzi:Ljava/lang/String;

    iput-object v0, p0, Landroidx/appcompat/view/menu/rq1;->zzj:Ljava/lang/String;

    return-void
.end method

.method public static synthetic H()Landroidx/appcompat/view/menu/rq1;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/rq1;->zzc:Landroidx/appcompat/view/menu/rq1;

    return-object v0
.end method

.method public static I()Landroidx/appcompat/view/menu/rq1;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/rq1;->zzc:Landroidx/appcompat/view/menu/rq1;

    return-object v0
.end method


# virtual methods
.method public final G()Landroidx/appcompat/view/menu/rq1$b;
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/rq1;->zzf:I

    invoke-static {v0}, Landroidx/appcompat/view/menu/rq1$b;->c(I)Landroidx/appcompat/view/menu/rq1$b;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/appcompat/view/menu/rq1$b;->n:Landroidx/appcompat/view/menu/rq1$b;

    :cond_0
    return-object v0
.end method

.method public final J()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/rq1;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public final K()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/rq1;->zzj:Ljava/lang/String;

    return-object v0
.end method

.method public final L()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/rq1;->zzi:Ljava/lang/String;

    return-object v0
.end method

.method public final M()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/rq1;->zzg:Z

    return v0
.end method

.method public final N()Z
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/rq1;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final O()Z
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/rq1;->zze:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final P()Z
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/rq1;->zze:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final Q()Z
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/rq1;->zze:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final R()Z
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/rq1;->zze:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

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
    sget-object p1, Landroidx/appcompat/view/menu/rq1;->zzd:Landroidx/appcompat/view/menu/t42;

    if-nez p1, :cond_1

    const-class p2, Landroidx/appcompat/view/menu/rq1;

    monitor-enter p2

    :try_start_0
    sget-object p1, Landroidx/appcompat/view/menu/rq1;->zzd:Landroidx/appcompat/view/menu/t42;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/appcompat/view/menu/q02$a;

    sget-object p3, Landroidx/appcompat/view/menu/rq1;->zzc:Landroidx/appcompat/view/menu/rq1;

    invoke-direct {p1, p3}, Landroidx/appcompat/view/menu/q02$a;-><init>(Landroidx/appcompat/view/menu/q02;)V

    sput-object p1, Landroidx/appcompat/view/menu/rq1;->zzd:Landroidx/appcompat/view/menu/t42;

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
    sget-object p1, Landroidx/appcompat/view/menu/rq1;->zzc:Landroidx/appcompat/view/menu/rq1;

    return-object p1

    :pswitch_4
    const-string v0, "zze"

    const-string v1, "zzf"

    invoke-static {}, Landroidx/appcompat/view/menu/rq1$b;->e()Landroidx/appcompat/view/menu/l12;

    move-result-object v2

    const-string v3, "zzg"

    const-string v4, "zzh"

    const-string v5, "zzi"

    const-string v6, "zzj"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1007\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004"

    sget-object p3, Landroidx/appcompat/view/menu/rq1;->zzc:Landroidx/appcompat/view/menu/rq1;

    invoke-static {p3, p2, p1}, Landroidx/appcompat/view/menu/q02;->r(Landroidx/appcompat/view/menu/w32;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Landroidx/appcompat/view/menu/rq1$a;

    invoke-direct {p1, p2}, Landroidx/appcompat/view/menu/rq1$a;-><init>(Landroidx/appcompat/view/menu/nq1;)V

    return-object p1

    :pswitch_6
    new-instance p1, Landroidx/appcompat/view/menu/rq1;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/rq1;-><init>()V

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
