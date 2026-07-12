.class public Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public m:I

.field public n:I

.field public o:I

.field public p:[I

.field public q:I

.field public r:[I

.field public s:Ljava/util/List;

.field public t:Z

.field public u:Z

.field public v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e$a;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->m:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->n:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->o:I

    if-lez v0, :cond_0

    .line 6
    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->p:[I

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->q:I

    if-lez v0, :cond_1

    .line 9
    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->r:[I

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->t:Z

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->u:Z

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_4

    move v1, v2

    :cond_4
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->v:Z

    const-class v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->s:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iget v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->o:I

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->o:I

    .line 17
    iget v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->m:I

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->m:I

    .line 18
    iget v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->n:I

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->n:I

    .line 19
    iget-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->p:[I

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->p:[I

    .line 20
    iget v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->q:I

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->q:I

    .line 21
    iget-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->r:[I

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->r:[I

    .line 22
    iget-boolean v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->t:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->t:Z

    .line 23
    iget-boolean v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->u:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->u:Z

    .line 24
    iget-boolean v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->v:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->v:Z

    .line 25
    iget-object p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->s:Ljava/util/List;

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->s:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->p:[I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->o:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->m:I

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->n:I

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->p:[I

    const/4 v1, 0x0

    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->o:I

    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->q:I

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->r:[I

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->s:Ljava/util/List;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->m:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->n:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->o:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->o:I

    if-lez p2, :cond_0

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->p:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    :cond_0
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->q:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->q:I

    if-lez p2, :cond_1

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->r:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    :cond_1
    iget-boolean p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->t:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->u:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->v:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->s:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
