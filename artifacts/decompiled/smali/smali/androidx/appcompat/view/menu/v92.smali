.class public final Landroidx/appcompat/view/menu/v92;
.super Landroidx/appcompat/view/menu/r;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/appcompat/view/menu/v92;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final m:I

.field public final n:Ljava/lang/String;

.field public final o:J

.field public final p:Ljava/lang/Long;

.field public final q:Ljava/lang/Float;

.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/t92;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/t92;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/v92;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JLjava/lang/Long;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroidx/appcompat/view/menu/r;-><init>()V

    iput p1, p0, Landroidx/appcompat/view/menu/v92;->m:I

    iput-object p2, p0, Landroidx/appcompat/view/menu/v92;->n:Ljava/lang/String;

    iput-wide p3, p0, Landroidx/appcompat/view/menu/v92;->o:J

    iput-object p5, p0, Landroidx/appcompat/view/menu/v92;->p:Ljava/lang/Long;

    const/4 p2, 0x0

    iput-object p2, p0, Landroidx/appcompat/view/menu/v92;->q:Ljava/lang/Float;

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    if-eqz p6, :cond_0

    .line 12
    invoke-virtual {p6}, Ljava/lang/Float;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Landroidx/appcompat/view/menu/v92;->t:Ljava/lang/Double;

    goto :goto_0

    :cond_1
    iput-object p9, p0, Landroidx/appcompat/view/menu/v92;->t:Ljava/lang/Double;

    :goto_0
    iput-object p7, p0, Landroidx/appcompat/view/menu/v92;->r:Ljava/lang/String;

    iput-object p8, p0, Landroidx/appcompat/view/menu/v92;->s:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/z92;)V
    .locals 6

    .line 1
    iget-object v1, p1, Landroidx/appcompat/view/menu/z92;->c:Ljava/lang/String;

    iget-wide v2, p1, Landroidx/appcompat/view/menu/z92;->d:J

    iget-object v4, p1, Landroidx/appcompat/view/menu/z92;->e:Ljava/lang/Object;

    iget-object v5, p1, Landroidx/appcompat/view/menu/z92;->b:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/v92;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/view/menu/r;-><init>()V

    .line 3
    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Landroidx/appcompat/view/menu/v92;->m:I

    iput-object p1, p0, Landroidx/appcompat/view/menu/v92;->n:Ljava/lang/String;

    iput-wide p2, p0, Landroidx/appcompat/view/menu/v92;->o:J

    iput-object p5, p0, Landroidx/appcompat/view/menu/v92;->s:Ljava/lang/String;

    const/4 p1, 0x0

    if-nez p4, :cond_0

    iput-object p1, p0, Landroidx/appcompat/view/menu/v92;->p:Ljava/lang/Long;

    iput-object p1, p0, Landroidx/appcompat/view/menu/v92;->q:Ljava/lang/Float;

    iput-object p1, p0, Landroidx/appcompat/view/menu/v92;->t:Ljava/lang/Double;

    iput-object p1, p0, Landroidx/appcompat/view/menu/v92;->r:Ljava/lang/String;

    return-void

    .line 4
    :cond_0
    instance-of p2, p4, Ljava/lang/Long;

    if-eqz p2, :cond_1

    .line 5
    check-cast p4, Ljava/lang/Long;

    iput-object p4, p0, Landroidx/appcompat/view/menu/v92;->p:Ljava/lang/Long;

    iput-object p1, p0, Landroidx/appcompat/view/menu/v92;->q:Ljava/lang/Float;

    iput-object p1, p0, Landroidx/appcompat/view/menu/v92;->t:Ljava/lang/Double;

    iput-object p1, p0, Landroidx/appcompat/view/menu/v92;->r:Ljava/lang/String;

    return-void

    .line 6
    :cond_1
    instance-of p2, p4, Ljava/lang/String;

    if-eqz p2, :cond_2

    iput-object p1, p0, Landroidx/appcompat/view/menu/v92;->p:Ljava/lang/Long;

    iput-object p1, p0, Landroidx/appcompat/view/menu/v92;->q:Ljava/lang/Float;

    iput-object p1, p0, Landroidx/appcompat/view/menu/v92;->t:Ljava/lang/Double;

    .line 7
    check-cast p4, Ljava/lang/String;

    iput-object p4, p0, Landroidx/appcompat/view/menu/v92;->r:Ljava/lang/String;

    return-void

    .line 8
    :cond_2
    instance-of p2, p4, Ljava/lang/Double;

    if-eqz p2, :cond_3

    iput-object p1, p0, Landroidx/appcompat/view/menu/v92;->p:Ljava/lang/Long;

    iput-object p1, p0, Landroidx/appcompat/view/menu/v92;->q:Ljava/lang/Float;

    .line 9
    check-cast p4, Ljava/lang/Double;

    iput-object p4, p0, Landroidx/appcompat/view/menu/v92;->t:Ljava/lang/Double;

    iput-object p1, p0, Landroidx/appcompat/view/menu/v92;->r:Ljava/lang/String;

    return-void

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "User attribute given of un-supported type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final d()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/v92;->p:Ljava/lang/Long;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/v92;->t:Ljava/lang/Double;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/v92;->r:Ljava/lang/String;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    invoke-static {p1}, Landroidx/appcompat/view/menu/jr0;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    iget v1, p0, Landroidx/appcompat/view/menu/v92;->m:I

    invoke-static {p1, v0, v1}, Landroidx/appcompat/view/menu/jr0;->i(Landroid/os/Parcel;II)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/v92;->n:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroidx/appcompat/view/menu/jr0;->n(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    iget-wide v3, p0, Landroidx/appcompat/view/menu/v92;->o:J

    invoke-static {p1, v0, v3, v4}, Landroidx/appcompat/view/menu/jr0;->k(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x4

    iget-object v1, p0, Landroidx/appcompat/view/menu/v92;->p:Ljava/lang/Long;

    invoke-static {p1, v0, v1, v2}, Landroidx/appcompat/view/menu/jr0;->l(Landroid/os/Parcel;ILjava/lang/Long;Z)V

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Landroidx/appcompat/view/menu/jr0;->g(Landroid/os/Parcel;ILjava/lang/Float;Z)V

    const/4 v0, 0x6

    iget-object v1, p0, Landroidx/appcompat/view/menu/v92;->r:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Landroidx/appcompat/view/menu/jr0;->n(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x7

    iget-object v1, p0, Landroidx/appcompat/view/menu/v92;->s:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Landroidx/appcompat/view/menu/jr0;->n(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0x8

    iget-object v1, p0, Landroidx/appcompat/view/menu/v92;->t:Ljava/lang/Double;

    invoke-static {p1, v0, v1, v2}, Landroidx/appcompat/view/menu/jr0;->f(Landroid/os/Parcel;ILjava/lang/Double;Z)V

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/jr0;->b(Landroid/os/Parcel;I)V

    return-void
.end method
