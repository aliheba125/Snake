.class public final Landroidx/appcompat/view/menu/u6$k;
.super Landroidx/appcompat/view/menu/u6$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/u6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k"
.end annotation


# instance fields
.field public final f:Landroid/content/pm/ServiceInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$Service;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/u6$d;-><init>(Landroid/content/pm/PackageParser$Component;)V

    .line 2
    iget-object v0, p1, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6$k;->f:Landroid/content/pm/ServiceInfo;

    .line 3
    iget-object v0, p1, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/u6$d;->b:Ljava/util/ArrayList;

    .line 6
    iget-object p1, p1, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    iget-object v1, p0, Landroidx/appcompat/view/menu/u6$d;->b:Ljava/util/ArrayList;

    .line 7
    new-instance v2, Landroidx/appcompat/view/menu/u6$l;

    invoke-direct {v2, v0}, Landroidx/appcompat/view/menu/u6$l;-><init>(Landroid/content/pm/PackageParser$IntentInfo;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 8
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/u6$d;-><init>(Landroid/os/Parcel;)V

    const-class v0, Landroid/content/pm/ServiceInfo;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ServiceInfo;

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6$k;->f:Landroid/content/pm/ServiceInfo;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/u6$d;->b:Ljava/util/ArrayList;

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    const-class v0, Landroidx/appcompat/view/menu/u6;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/u6$f;

    iget-object v2, p0, Landroidx/appcompat/view/menu/u6$d;->b:Ljava/util/ArrayList;

    .line 13
    new-instance v3, Landroidx/appcompat/view/menu/u6$l;

    invoke-direct {v3, v0}, Landroidx/appcompat/view/menu/u6$l;-><init>(Landroidx/appcompat/view/menu/u6$f;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method
