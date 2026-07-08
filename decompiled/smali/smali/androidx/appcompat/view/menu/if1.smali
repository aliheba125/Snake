.class public final Landroidx/appcompat/view/menu/if1;
.super Landroidx/appcompat/view/menu/r;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/appcompat/view/menu/if1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Landroidx/appcompat/view/menu/v92;

.field public p:J

.field public q:Z

.field public r:Ljava/lang/String;

.field public s:Landroidx/appcompat/view/menu/oi1;

.field public t:J

.field public u:Landroidx/appcompat/view/menu/oi1;

.field public v:J

.field public w:Landroidx/appcompat/view/menu/oi1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/tf1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/tf1;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/if1;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/if1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/view/menu/r;-><init>()V

    .line 2
    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p1, Landroidx/appcompat/view/menu/if1;->m:Ljava/lang/String;

    iput-object v0, p0, Landroidx/appcompat/view/menu/if1;->m:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Landroidx/appcompat/view/menu/if1;->n:Ljava/lang/String;

    iput-object v0, p0, Landroidx/appcompat/view/menu/if1;->n:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    iput-object v0, p0, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    .line 6
    iget-wide v0, p1, Landroidx/appcompat/view/menu/if1;->p:J

    iput-wide v0, p0, Landroidx/appcompat/view/menu/if1;->p:J

    .line 7
    iget-boolean v0, p1, Landroidx/appcompat/view/menu/if1;->q:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/if1;->q:Z

    .line 8
    iget-object v0, p1, Landroidx/appcompat/view/menu/if1;->r:Ljava/lang/String;

    iput-object v0, p0, Landroidx/appcompat/view/menu/if1;->r:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Landroidx/appcompat/view/menu/if1;->s:Landroidx/appcompat/view/menu/oi1;

    iput-object v0, p0, Landroidx/appcompat/view/menu/if1;->s:Landroidx/appcompat/view/menu/oi1;

    .line 10
    iget-wide v0, p1, Landroidx/appcompat/view/menu/if1;->t:J

    iput-wide v0, p0, Landroidx/appcompat/view/menu/if1;->t:J

    .line 11
    iget-object v0, p1, Landroidx/appcompat/view/menu/if1;->u:Landroidx/appcompat/view/menu/oi1;

    iput-object v0, p0, Landroidx/appcompat/view/menu/if1;->u:Landroidx/appcompat/view/menu/oi1;

    .line 12
    iget-wide v0, p1, Landroidx/appcompat/view/menu/if1;->v:J

    iput-wide v0, p0, Landroidx/appcompat/view/menu/if1;->v:J

    .line 13
    iget-object p1, p1, Landroidx/appcompat/view/menu/if1;->w:Landroidx/appcompat/view/menu/oi1;

    iput-object p1, p0, Landroidx/appcompat/view/menu/if1;->w:Landroidx/appcompat/view/menu/oi1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroidx/appcompat/view/menu/v92;JZLjava/lang/String;Landroidx/appcompat/view/menu/oi1;JLandroidx/appcompat/view/menu/oi1;JLandroidx/appcompat/view/menu/oi1;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroidx/appcompat/view/menu/r;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/if1;->m:Ljava/lang/String;

    iput-object p2, p0, Landroidx/appcompat/view/menu/if1;->n:Ljava/lang/String;

    iput-object p3, p0, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    iput-wide p4, p0, Landroidx/appcompat/view/menu/if1;->p:J

    iput-boolean p6, p0, Landroidx/appcompat/view/menu/if1;->q:Z

    iput-object p7, p0, Landroidx/appcompat/view/menu/if1;->r:Ljava/lang/String;

    iput-object p8, p0, Landroidx/appcompat/view/menu/if1;->s:Landroidx/appcompat/view/menu/oi1;

    iput-wide p9, p0, Landroidx/appcompat/view/menu/if1;->t:J

    iput-object p11, p0, Landroidx/appcompat/view/menu/if1;->u:Landroidx/appcompat/view/menu/oi1;

    iput-wide p12, p0, Landroidx/appcompat/view/menu/if1;->v:J

    iput-object p14, p0, Landroidx/appcompat/view/menu/if1;->w:Landroidx/appcompat/view/menu/oi1;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    invoke-static {p1}, Landroidx/appcompat/view/menu/jr0;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/if1;->m:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Landroidx/appcompat/view/menu/jr0;->n(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Landroidx/appcompat/view/menu/if1;->n:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Landroidx/appcompat/view/menu/jr0;->n(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    iget-object v2, p0, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    invoke-static {p1, v1, v2, p2, v3}, Landroidx/appcompat/view/menu/jr0;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    iget-wide v4, p0, Landroidx/appcompat/view/menu/if1;->p:J

    invoke-static {p1, v1, v4, v5}, Landroidx/appcompat/view/menu/jr0;->k(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x6

    iget-boolean v2, p0, Landroidx/appcompat/view/menu/if1;->q:Z

    invoke-static {p1, v1, v2}, Landroidx/appcompat/view/menu/jr0;->c(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x7

    iget-object v2, p0, Landroidx/appcompat/view/menu/if1;->r:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Landroidx/appcompat/view/menu/jr0;->n(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x8

    iget-object v2, p0, Landroidx/appcompat/view/menu/if1;->s:Landroidx/appcompat/view/menu/oi1;

    invoke-static {p1, v1, v2, p2, v3}, Landroidx/appcompat/view/menu/jr0;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x9

    iget-wide v4, p0, Landroidx/appcompat/view/menu/if1;->t:J

    invoke-static {p1, v1, v4, v5}, Landroidx/appcompat/view/menu/jr0;->k(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xa

    iget-object v2, p0, Landroidx/appcompat/view/menu/if1;->u:Landroidx/appcompat/view/menu/oi1;

    invoke-static {p1, v1, v2, p2, v3}, Landroidx/appcompat/view/menu/jr0;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xb

    iget-wide v4, p0, Landroidx/appcompat/view/menu/if1;->v:J

    invoke-static {p1, v1, v4, v5}, Landroidx/appcompat/view/menu/jr0;->k(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xc

    iget-object v2, p0, Landroidx/appcompat/view/menu/if1;->w:Landroidx/appcompat/view/menu/oi1;

    invoke-static {p1, v1, v2, p2, v3}, Landroidx/appcompat/view/menu/jr0;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/jr0;->b(Landroid/os/Parcel;I)V

    return-void
.end method
