.class public final Landroidx/appcompat/view/menu/sy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/pu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/sy$a;,
        Landroidx/appcompat/view/menu/sy$b;
    }
.end annotation


# static fields
.field public static final d:Landroidx/appcompat/view/menu/sy$a;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/q8;

.field public final b:Landroidx/appcompat/view/menu/sy$b;

.field public final c:Landroidx/appcompat/view/menu/pu$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/sy$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/sy$a;-><init>(Landroidx/appcompat/view/menu/lj;)V

    sput-object v0, Landroidx/appcompat/view/menu/sy;->d:Landroidx/appcompat/view/menu/sy$a;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/q8;Landroidx/appcompat/view/menu/sy$b;Landroidx/appcompat/view/menu/pu$b;)V
    .locals 1

    const-string v0, "featureBounds"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/sy;->a:Landroidx/appcompat/view/menu/q8;

    iput-object p2, p0, Landroidx/appcompat/view/menu/sy;->b:Landroidx/appcompat/view/menu/sy$b;

    iput-object p3, p0, Landroidx/appcompat/view/menu/sy;->c:Landroidx/appcompat/view/menu/pu$b;

    sget-object p2, Landroidx/appcompat/view/menu/sy;->d:Landroidx/appcompat/view/menu/sy$a;

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/sy$a;->a(Landroidx/appcompat/view/menu/q8;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/sy;->a:Landroidx/appcompat/view/menu/q8;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q8;->f()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroidx/appcompat/view/menu/pu$a;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/sy;->a:Landroidx/appcompat/view/menu/q8;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q8;->d()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/sy;->a:Landroidx/appcompat/view/menu/q8;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q8;->a()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/pu$a;->d:Landroidx/appcompat/view/menu/pu$a;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Landroidx/appcompat/view/menu/pu$a;->c:Landroidx/appcompat/view/menu/pu$a;

    :goto_1
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Landroidx/appcompat/view/menu/sy;

    invoke-static {v2, v1}, Landroidx/appcompat/view/menu/z50;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type androidx.window.layout.HardwareFoldingFeature"

    invoke-static {p1, v1}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/view/menu/sy;

    iget-object v1, p0, Landroidx/appcompat/view/menu/sy;->a:Landroidx/appcompat/view/menu/q8;

    iget-object v3, p1, Landroidx/appcompat/view/menu/sy;->a:Landroidx/appcompat/view/menu/q8;

    invoke-static {v1, v3}, Landroidx/appcompat/view/menu/z50;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/appcompat/view/menu/sy;->b:Landroidx/appcompat/view/menu/sy$b;

    iget-object v3, p1, Landroidx/appcompat/view/menu/sy;->b:Landroidx/appcompat/view/menu/sy$b;

    invoke-static {v1, v3}, Landroidx/appcompat/view/menu/z50;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/sy;->getState()Landroidx/appcompat/view/menu/pu$b;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/sy;->getState()Landroidx/appcompat/view/menu/pu$b;

    move-result-object p1

    invoke-static {v1, p1}, Landroidx/appcompat/view/menu/z50;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getState()Landroidx/appcompat/view/menu/pu$b;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/sy;->c:Landroidx/appcompat/view/menu/pu$b;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/sy;->a:Landroidx/appcompat/view/menu/q8;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q8;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/appcompat/view/menu/sy;->b:Landroidx/appcompat/view/menu/sy$b;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/sy;->getState()Landroidx/appcompat/view/menu/pu$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroidx/appcompat/view/menu/sy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/sy;->a:Landroidx/appcompat/view/menu/q8;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/sy;->b:Landroidx/appcompat/view/menu/sy$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/sy;->getState()Landroidx/appcompat/view/menu/pu$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
