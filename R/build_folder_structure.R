# Build_folder_structure
# This function builds the legacy data folder structure in the working directory



build_folder_structure<-function(project_name=project_name){
  neet::assert_neet(project_name, "character")
  
  if(dir.exists(project_name)==TRUE) {
    print("Directory already exists please check the name and retry")
  } else{
    dir.create(paste0(getwd(),"/", project_name))
    dir.create(paste0(getwd(),"/", project_name,"/", "minimum_metadata"))
    dir.create(paste0(getwd(),"/",project_name,"/", "data"))
    dir.create(paste0(getwd(),"/", project_name,"/","data", "/", "raw_data"))
    dir.create(paste0(getwd(),"/", project_name,"/","data", "/", "mapped_data"))
    dir.create(paste0(getwd(),"/", project_name,"/","data", "/", "scan_data"))
    dir.create(paste0(getwd(),"/", project_name,"/","scripts"))
    dir.create(paste0(getwd(),"/", project_name,"/","meta_xml"))
    dir.create(paste0(getwd(),"/", project_name,"/","dmp"))
    rmarkdown::draft(paste0(getwd(),"/", project_name,"/", "minimum_metadata", "/","minimum_metadata.Rmd"),
                     template="minimum_metadata", package="TheDataPackage", edit=FALSE)

      }

}

#build_folder_structure(project_name = "Test")


#NEED TO ADD TEST
#library(neet)
# expected type will be a folder - what is this as an R object
# check list.files function documentation

