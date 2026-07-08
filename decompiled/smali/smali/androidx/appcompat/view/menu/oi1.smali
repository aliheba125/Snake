.class public final Landroidx/appcompat/view/menu/oi1;
.super Landroidx/appcompat/view/menu/r;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/appcompat/view/menu/oi1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final m:Ljava/lang/String;

.field public final n:Landroidx/appcompat/view/menu/ei1;

.field public final o:Ljava/lang/String;

.field public final p:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/mi1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/mi1;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/oi1;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/oi1;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/view/menu/r;-><init>()V

    .line 2
    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p1, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    iput-object v0, p0, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Landroidx/appcompat/view/menu/oi1;->n:Landroidx/appcompat/view/menu/ei1;

    iput-object v0, p0, Landroidx/appcompat/view/menu/oi1;->n:Landroidx/appcompat/view/menu/ei1;

    .line 5
    iget-object p1, p1, Landroidx/appcompat/view/menu/oi1;->o:Ljava/lang/String;

    iput-object p1, p0, Landroidx/appcompat/view/menu/oi1;->o:Ljava/lang/String;

    iput-wide p2, p0, Landroidx/appcompat/view/menu/oi1;->p:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/appcompat/view/menu/ei1;Ljava/lang/String;J)V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroidx/appcompat/view/menu/r;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    iput-object p2, p0, Landroidx/appcompat/view/menu/oi1;->n:Landroidx/appcompat/view/menu/ei1;

    iput-object p3, p0, Landroidx/appcompat/view/menu/oi1;->o:Ljava/lang/String;

    iput-wide p4, p0, Landroidx/appcompat/view/menu/oi1;->p:J

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/oi1;->o:Ljava/lang/String;

    iget-object v1, p0, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    iget-object v2, p0, Landroidx/appcompat/view/menu/oi1;->n:Landroidx/appcompat/view/menu/ei1;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "origin="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",name="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",params="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Landroidx/appcompat/view/menu/jr0;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Landroidx/appcompat/view/menu/jr0;->n(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Landroidx/appcompat/view/menu/oi1;->n:Landroidx/appcompat/view/menu/ei1;

    invoke-static {p1, v1, v2, p2, v3}, Landroidx/appcompat/view/menu/jr0;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x4

    iget-object v1, p0, Landroidx/appcompat/view/menu/oi1;->o:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, Landroidx/appcompat/view/menu/jr0;->n(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 p2, 0x5

    iget-wide v1, p0, Landroidx/appcompat/view/menu/oi1;->p:J

    invoke-static {p1, p2, v1, v2}, Landroidx/appcompat/view/menu/jr0;->k(Landroid/os/Parcel;IJ)V

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/jr0;->b(Landroid/os/Parcel;I)V

    return-void
.end method
