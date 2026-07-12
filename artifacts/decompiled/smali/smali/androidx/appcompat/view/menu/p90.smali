.class public final Landroidx/appcompat/view/menu/p90;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/p90$a;
    }
.end annotation


# static fields
.field public static final b:Landroidx/appcompat/view/menu/p90;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/q90;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Locale;

    invoke-static {v0}, Landroidx/appcompat/view/menu/p90;->a([Ljava/util/Locale;)Landroidx/appcompat/view/menu/p90;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/p90;->b:Landroidx/appcompat/view/menu/p90;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/q90;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/p90;->a:Landroidx/appcompat/view/menu/q90;

    return-void
.end method

.method public static varargs a([Ljava/util/Locale;)Landroidx/appcompat/view/menu/p90;
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/p90$a;->a([Ljava/util/Locale;)Landroid/os/LocaleList;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/p90;->d(Landroid/os/LocaleList;)Landroidx/appcompat/view/menu/p90;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/os/LocaleList;)Landroidx/appcompat/view/menu/p90;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/p90;

    new-instance v1, Landroidx/appcompat/view/menu/r90;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/r90;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/p90;-><init>(Landroidx/appcompat/view/menu/q90;)V

    return-object v0
.end method


# virtual methods
.method public b(I)Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/p90;->a:Landroidx/appcompat/view/menu/q90;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/q90;->get(I)Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/p90;->a:Landroidx/appcompat/view/menu/q90;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/q90;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroidx/appcompat/view/menu/p90;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/p90;->a:Landroidx/appcompat/view/menu/q90;

    check-cast p1, Landroidx/appcompat/view/menu/p90;

    iget-object p1, p1, Landroidx/appcompat/view/menu/p90;->a:Landroidx/appcompat/view/menu/q90;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/p90;->a:Landroidx/appcompat/view/menu/q90;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/p90;->a:Landroidx/appcompat/view/menu/q90;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
