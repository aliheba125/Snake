.class public Landroidx/appcompat/view/menu/z01;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Landroid/accounts/Account;

.field public final c:J

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/appcompat/view/menu/z01;->a:I

    iput-object p2, p0, Landroidx/appcompat/view/menu/z01;->b:Landroid/accounts/Account;

    iput-wide p6, p0, Landroidx/appcompat/view/menu/z01;->c:J

    iput-object p5, p0, Landroidx/appcompat/view/menu/z01;->d:Ljava/lang/String;

    iput-object p4, p0, Landroidx/appcompat/view/menu/z01;->e:Ljava/lang/String;

    iput-object p3, p0, Landroidx/appcompat/view/menu/z01;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/appcompat/view/menu/z01;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/appcompat/view/menu/z01;

    iget v1, p0, Landroidx/appcompat/view/menu/z01;->a:I

    iget v3, p1, Landroidx/appcompat/view/menu/z01;->a:I

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Landroidx/appcompat/view/menu/z01;->c:J

    iget-wide v5, p1, Landroidx/appcompat/view/menu/z01;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/view/menu/z01;->b:Landroid/accounts/Account;

    iget-object v3, p1, Landroidx/appcompat/view/menu/z01;->b:Landroid/accounts/Account;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/view/menu/z01;->d:Ljava/lang/String;

    iget-object v3, p1, Landroidx/appcompat/view/menu/z01;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/view/menu/z01;->e:Ljava/lang/String;

    iget-object v3, p1, Landroidx/appcompat/view/menu/z01;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/view/menu/z01;->f:Ljava/lang/String;

    iget-object p1, p1, Landroidx/appcompat/view/menu/z01;->f:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 7

    iget v0, p0, Landroidx/appcompat/view/menu/z01;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/z01;->b:Landroid/accounts/Account;

    iget-wide v3, p0, Landroidx/appcompat/view/menu/z01;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Landroidx/appcompat/view/menu/z01;->d:Ljava/lang/String;

    iget-object v5, p0, Landroidx/appcompat/view/menu/z01;->e:Ljava/lang/String;

    iget-object v6, p0, Landroidx/appcompat/view/menu/z01;->f:Ljava/lang/String;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
