.class public final Landroidx/appcompat/view/menu/jn1;
.super Landroidx/appcompat/view/menu/r;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/appcompat/view/menu/jn1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final m:J

.field public final n:J

.field public final o:Z

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field public final s:Landroid/os/Bundle;

.field public final t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/pn1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/pn1;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/jn1;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/r;-><init>()V

    iput-wide p1, p0, Landroidx/appcompat/view/menu/jn1;->m:J

    iput-wide p3, p0, Landroidx/appcompat/view/menu/jn1;->n:J

    iput-boolean p5, p0, Landroidx/appcompat/view/menu/jn1;->o:Z

    iput-object p6, p0, Landroidx/appcompat/view/menu/jn1;->p:Ljava/lang/String;

    iput-object p7, p0, Landroidx/appcompat/view/menu/jn1;->q:Ljava/lang/String;

    iput-object p8, p0, Landroidx/appcompat/view/menu/jn1;->r:Ljava/lang/String;

    iput-object p9, p0, Landroidx/appcompat/view/menu/jn1;->s:Landroid/os/Bundle;

    iput-object p10, p0, Landroidx/appcompat/view/menu/jn1;->t:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Landroidx/appcompat/view/menu/jr0;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    iget-wide v1, p0, Landroidx/appcompat/view/menu/jn1;->m:J

    invoke-static {p1, v0, v1, v2}, Landroidx/appcompat/view/menu/jr0;->k(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x2

    iget-wide v1, p0, Landroidx/appcompat/view/menu/jn1;->n:J

    invoke-static {p1, v0, v1, v2}, Landroidx/appcompat/view/menu/jr0;->k(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x3

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/jn1;->o:Z

    invoke-static {p1, v0, v1}, Landroidx/appcompat/view/menu/jr0;->c(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/jn1;->p:Ljava/lang/String;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroidx/appcompat/view/menu/jr0;->n(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x5

    iget-object v1, p0, Landroidx/appcompat/view/menu/jn1;->q:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Landroidx/appcompat/view/menu/jr0;->n(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x6

    iget-object v1, p0, Landroidx/appcompat/view/menu/jn1;->r:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Landroidx/appcompat/view/menu/jr0;->n(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x7

    iget-object v1, p0, Landroidx/appcompat/view/menu/jn1;->s:Landroid/os/Bundle;

    invoke-static {p1, v0, v1, v2}, Landroidx/appcompat/view/menu/jr0;->e(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/16 v0, 0x8

    iget-object v1, p0, Landroidx/appcompat/view/menu/jn1;->t:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Landroidx/appcompat/view/menu/jr0;->n(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/jr0;->b(Landroid/os/Parcel;I)V

    return-void
.end method
