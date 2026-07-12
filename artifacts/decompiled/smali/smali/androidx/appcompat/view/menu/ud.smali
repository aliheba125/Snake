.class public final Landroidx/appcompat/view/menu/ud;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/ud$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Set;

.field public final c:Ljava/util/Set;

.field public final d:I

.field public final e:I

.field public final f:Landroidx/appcompat/view/menu/de;

.field public final g:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILandroidx/appcompat/view/menu/de;Ljava/util/Set;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/ud;->a:Ljava/lang/String;

    .line 3
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/ud;->b:Ljava/util/Set;

    .line 4
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/ud;->c:Ljava/util/Set;

    iput p4, p0, Landroidx/appcompat/view/menu/ud;->d:I

    iput p5, p0, Landroidx/appcompat/view/menu/ud;->e:I

    iput-object p6, p0, Landroidx/appcompat/view/menu/ud;->f:Landroidx/appcompat/view/menu/de;

    .line 5
    invoke-static {p7}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/ud;->g:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILandroidx/appcompat/view/menu/de;Ljava/util/Set;Landroidx/appcompat/view/menu/ud$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Landroidx/appcompat/view/menu/ud;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILandroidx/appcompat/view/menu/de;Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;Landroidx/appcompat/view/menu/xd;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/ud;->q(Ljava/lang/Object;Landroidx/appcompat/view/menu/xd;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Object;Landroidx/appcompat/view/menu/xd;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/ud;->r(Ljava/lang/Object;Landroidx/appcompat/view/menu/xd;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroidx/appcompat/view/menu/ul0;)Landroidx/appcompat/view/menu/ud$b;
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/ud$b;

    const/4 v1, 0x0

    new-array v1, v1, [Landroidx/appcompat/view/menu/ul0;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/appcompat/view/menu/ud$b;-><init>(Landroidx/appcompat/view/menu/ul0;[Landroidx/appcompat/view/menu/ul0;Landroidx/appcompat/view/menu/ud$a;)V

    return-object v0
.end method

.method public static varargs d(Landroidx/appcompat/view/menu/ul0;[Landroidx/appcompat/view/menu/ul0;)Landroidx/appcompat/view/menu/ud$b;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/ud$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/appcompat/view/menu/ud$b;-><init>(Landroidx/appcompat/view/menu/ul0;[Landroidx/appcompat/view/menu/ul0;Landroidx/appcompat/view/menu/ud$a;)V

    return-object v0
.end method

.method public static e(Ljava/lang/Class;)Landroidx/appcompat/view/menu/ud$b;
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/ud$b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/appcompat/view/menu/ud$b;-><init>(Ljava/lang/Class;[Ljava/lang/Class;Landroidx/appcompat/view/menu/ud$a;)V

    return-object v0
.end method

.method public static varargs f(Ljava/lang/Class;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/ud$b;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/ud$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/appcompat/view/menu/ud$b;-><init>(Ljava/lang/Class;[Ljava/lang/Class;Landroidx/appcompat/view/menu/ud$a;)V

    return-object v0
.end method

.method public static l(Ljava/lang/Object;Ljava/lang/Class;)Landroidx/appcompat/view/menu/ud;
    .locals 1

    invoke-static {p1}, Landroidx/appcompat/view/menu/ud;->m(Ljava/lang/Class;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object p1

    new-instance v0, Landroidx/appcompat/view/menu/sd;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/sd;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/ud$b;->f(Landroidx/appcompat/view/menu/de;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ud$b;->d()Landroidx/appcompat/view/menu/ud;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/lang/Class;)Landroidx/appcompat/view/menu/ud$b;
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/ud;->e(Ljava/lang/Class;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/ud$b;->a(Landroidx/appcompat/view/menu/ud$b;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Ljava/lang/Object;Landroidx/appcompat/view/menu/xd;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static synthetic r(Ljava/lang/Object;Landroidx/appcompat/view/menu/xd;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static varargs s(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/ud;
    .locals 0

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/ud;->f(Ljava/lang/Class;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object p1

    new-instance p2, Landroidx/appcompat/view/menu/td;

    invoke-direct {p2, p0}, Landroidx/appcompat/view/menu/td;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/ud$b;->f(Landroidx/appcompat/view/menu/de;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ud$b;->d()Landroidx/appcompat/view/menu/ud;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public g()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ud;->c:Ljava/util/Set;

    return-object v0
.end method

.method public h()Landroidx/appcompat/view/menu/de;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ud;->f:Landroidx/appcompat/view/menu/de;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ud;->a:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ud;->b:Ljava/util/Set;

    return-object v0
.end method

.method public k()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ud;->g:Ljava/util/Set;

    return-object v0
.end method

.method public n()Z
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/ud;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public o()Z
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/ud;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()Z
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/ud;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t(Landroidx/appcompat/view/menu/de;)Landroidx/appcompat/view/menu/ud;
    .locals 9

    new-instance v8, Landroidx/appcompat/view/menu/ud;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ud;->a:Ljava/lang/String;

    iget-object v2, p0, Landroidx/appcompat/view/menu/ud;->b:Ljava/util/Set;

    iget-object v3, p0, Landroidx/appcompat/view/menu/ud;->c:Ljava/util/Set;

    iget v4, p0, Landroidx/appcompat/view/menu/ud;->d:I

    iget v5, p0, Landroidx/appcompat/view/menu/ud;->e:I

    iget-object v7, p0, Landroidx/appcompat/view/menu/ud;->g:Ljava/util/Set;

    move-object v0, v8

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Landroidx/appcompat/view/menu/ud;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILandroidx/appcompat/view/menu/de;Ljava/util/Set;)V

    return-object v8
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Component<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/ud;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/appcompat/view/menu/ud;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/appcompat/view/menu/ud;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ud;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
