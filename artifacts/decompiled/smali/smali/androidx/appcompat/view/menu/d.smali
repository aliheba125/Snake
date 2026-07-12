.class public final Landroidx/appcompat/view/menu/d;
.super Landroidx/appcompat/view/menu/rg0;
.source "SourceFile"


# static fields
.field public static final m:Landroidx/appcompat/view/menu/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/d;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/d;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/d;->m:Landroidx/appcompat/view/menu/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/rg0;-><init>()V

    return-void
.end method

.method public static e()Landroidx/appcompat/view/menu/rg0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/d;->m:Landroidx/appcompat/view/menu/d;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Optional.get() cannot be called on an absent value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    const v0, 0x79a31aac

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Optional.absent()"

    return-object v0
.end method
