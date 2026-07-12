.class public final Landroidx/appcompat/view/menu/td0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/appcompat/view/menu/td0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final m:Ljava/util/Calendar;

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:J

.field public s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/td0$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/td0$a;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/td0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    invoke-static {p1}, Landroidx/appcompat/view/menu/q41;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/td0;->m:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Landroidx/appcompat/view/menu/td0;->n:I

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/view/menu/td0;->o:I

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/view/menu/td0;->p:I

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/td0;->q:I

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/appcompat/view/menu/td0;->r:J

    return-void
.end method

.method public static e(II)Landroidx/appcompat/view/menu/td0;
    .locals 2

    invoke-static {}, Landroidx/appcompat/view/menu/q41;->i()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x2

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    new-instance p0, Landroidx/appcompat/view/menu/td0;

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/td0;-><init>(Ljava/util/Calendar;)V

    return-object p0
.end method

.method public static i(J)Landroidx/appcompat/view/menu/td0;
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/q41;->i()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance p0, Landroidx/appcompat/view/menu/td0;

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/td0;-><init>(Ljava/util/Calendar;)V

    return-object p0
.end method

.method public static j()Landroidx/appcompat/view/menu/td0;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/td0;

    invoke-static {}, Landroidx/appcompat/view/menu/q41;->g()Ljava/util/Calendar;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/td0;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method


# virtual methods
.method public c(Landroidx/appcompat/view/menu/td0;)I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/td0;->m:Ljava/util/Calendar;

    iget-object p1, p1, Landroidx/appcompat/view/menu/td0;->m:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/appcompat/view/menu/td0;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/td0;->c(Landroidx/appcompat/view/menu/td0;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/appcompat/view/menu/td0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/appcompat/view/menu/td0;

    iget v1, p0, Landroidx/appcompat/view/menu/td0;->n:I

    iget v3, p1, Landroidx/appcompat/view/menu/td0;->n:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/appcompat/view/menu/td0;->o:I

    iget p1, p1, Landroidx/appcompat/view/menu/td0;->o:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/td0;->n:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/view/menu/td0;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public k(I)I
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/td0;->m:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/td0;->m:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p1

    :goto_0
    sub-int/2addr v0, p1

    if-gez v0, :cond_1

    iget p1, p0, Landroidx/appcompat/view/menu/td0;->p:I

    add-int/2addr v0, p1

    :cond_1
    return v0
.end method

.method public l(I)J
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/td0;->m:Ljava/util/Calendar;

    invoke-static {v0}, Landroidx/appcompat/view/menu/q41;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public m(J)I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/td0;->m:Ljava/util/Calendar;

    invoke-static {v0}, Landroidx/appcompat/view/menu/q41;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x5

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    return p1
.end method

.method public n()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/td0;->s:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/td0;->m:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/zi;->f(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/td0;->s:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/td0;->s:Ljava/lang/String;

    return-object v0
.end method

.method public o()J
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/td0;->m:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public p(I)Landroidx/appcompat/view/menu/td0;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/td0;->m:Ljava/util/Calendar;

    invoke-static {v0}, Landroidx/appcompat/view/menu/q41;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    new-instance p1, Landroidx/appcompat/view/menu/td0;

    invoke-direct {p1, v0}, Landroidx/appcompat/view/menu/td0;-><init>(Ljava/util/Calendar;)V

    return-object p1
.end method

.method public q(Landroidx/appcompat/view/menu/td0;)I
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/td0;->m:Ljava/util/Calendar;

    instance-of v0, v0, Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_0

    iget v0, p1, Landroidx/appcompat/view/menu/td0;->o:I

    iget v1, p0, Landroidx/appcompat/view/menu/td0;->o:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xc

    iget p1, p1, Landroidx/appcompat/view/menu/td0;->n:I

    iget v1, p0, Landroidx/appcompat/view/menu/td0;->n:I

    sub-int/2addr p1, v1

    add-int/2addr v0, p1

    return v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only Gregorian calendars are supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroidx/appcompat/view/menu/td0;->o:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/appcompat/view/menu/td0;->n:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
