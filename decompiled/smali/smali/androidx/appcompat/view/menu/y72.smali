.class public final Landroidx/appcompat/view/menu/y72;
.super Landroidx/appcompat/view/menu/r;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/appcompat/view/menu/y72;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final m:Ljava/lang/String;

.field public final n:J

.field public final o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/e82;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/e82;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/y72;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/r;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/y72;->m:Ljava/lang/String;

    iput-wide p2, p0, Landroidx/appcompat/view/menu/y72;->n:J

    iput p4, p0, Landroidx/appcompat/view/menu/y72;->o:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Landroidx/appcompat/view/menu/jr0;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Landroidx/appcompat/view/menu/y72;->m:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Landroidx/appcompat/view/menu/jr0;->n(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x2

    iget-wide v1, p0, Landroidx/appcompat/view/menu/y72;->n:J

    invoke-static {p1, v0, v1, v2}, Landroidx/appcompat/view/menu/jr0;->k(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x3

    iget v1, p0, Landroidx/appcompat/view/menu/y72;->o:I

    invoke-static {p1, v0, v1}, Landroidx/appcompat/view/menu/jr0;->i(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/jr0;->b(Landroid/os/Parcel;I)V

    return-void
.end method
