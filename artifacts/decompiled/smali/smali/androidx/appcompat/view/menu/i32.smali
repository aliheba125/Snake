.class public final Landroidx/appcompat/view/menu/i32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/y32;


# instance fields
.field public a:[Landroidx/appcompat/view/menu/y32;


# direct methods
.method public varargs constructor <init>([Landroidx/appcompat/view/menu/y32;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/i32;->a:[Landroidx/appcompat/view/menu/y32;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Landroidx/appcompat/view/menu/s32;
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/i32;->a:[Landroidx/appcompat/view/menu/y32;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-interface {v3, p1}, Landroidx/appcompat/view/menu/y32;->b(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3, p1}, Landroidx/appcompat/view/menu/y32;->a(Ljava/lang/Class;)Landroidx/appcompat/view/menu/s32;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No factory is available for message type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Ljava/lang/Class;)Z
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/i32;->a:[Landroidx/appcompat/view/menu/y32;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-interface {v4, p1}, Landroidx/appcompat/view/menu/y32;->b(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
